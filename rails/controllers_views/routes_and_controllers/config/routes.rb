Rails.application.routes.draw do
  get 'hello' => 'says#hello'
  get 'say/hello' => 'says#sayHello'
  get 'say/hello/joe' => 'says#sayHelloJoe'
  get 'say/hello/michael' => 'says#sayHelloMichael'
  get '' => 'says#index'
  get 'times' => 'says#times'
  get 'times/restart' => 'says#restart'
end
