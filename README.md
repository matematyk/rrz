### Przymiarki do projektu, 
Podczas generowania testów wykorzystalem biblitekę ode45 do stworzenia obrazu v(t), x(t) dla parametrów z zadania.
Ma to na celu przetestowanie mojego algorytmu Rungego-Kutty

Powstał też problem przy generowaniu macierzy 
Kod ```
				u= RK42d(f1,u,t(i),t(i+1),N);
                pomoc(i+1) = u(1);
                pomoc2(i+1) = u(2);
```
Jest on nie czytelny...


### problemy:
dla dużych N ~ 1000 złożoność algorytmu Rungego wzrasta i widzać cieżki tryb obliczeń, 
Dla algorytmu ode45 nie widać tego problemu... Ciekawe jak jest to tam zaimplementowane