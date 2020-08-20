export default {
  namespaced: true,
  state: {
    companyId: '',
    userId: '',
    token: ''
  },
  mutations: {
    create (state, data) {
      state.companyId = data.companyId
      state.token = data.token
      state.userId = data.user_id
    },
    destroy (state) {
      state.companyId = ''
      state.userId = ''
      state.token = ''
    }
  },
  actions: {
    create ({ commit, dispatch }, data) {
      dispatch(
        'http/post',
        { url: '/users/sign_in', data, error: 'message.unauthorized' },
        { root: true }
      ).then(res => commit('create', res.data))
        .catch(err => err)
    },
    destroy ({ commit, dispatch }, data) {
      dispatch(
        'http/delete',
        { url: '/auth', data },
        { root: true }
      ).then(res => commit('create', res.data))
        .catch(err => err)
        // logout anyway ...
        .finally(res => commit('destroy'))
    }
  }
}