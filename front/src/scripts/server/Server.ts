export class Server{
  protected async fetch(method: 'POST'|'GET', url: string, body: string){
    return fetch(url, {
      method: method,
      cache: 'no-cache',
      credentials: 'same-origin',
      headers: {
        'Content-Type': 'application/json'
      },
      body: body
    });
  }
}
