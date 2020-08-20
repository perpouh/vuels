import Axios from 'axios'
export default {
  methods:{
    axios : Axios.create({
      baseURL: 'http://localhost:9000', // バックエンドB のURL:port を指定する
      headers: {
        'Content-Type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest'
      },
      responseType: 'json'  
    }),
    get : url =>  params => axios.get(url, { params: { params } }),
    lookup : isbn => get('/books/lookup')({ isbn: isbn })
  }
}