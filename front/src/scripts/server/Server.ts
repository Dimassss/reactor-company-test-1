export class Server{
  protected async fetch(method: 'POST'|'GET', url: string, body: string){
    let data = new FormData();
    data.append('json', JSON.stringify(body))

    return fetch(url, {
      method: method,
      body: data
    });
  }
}
