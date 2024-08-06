FROM haskell:9

WORKDIR /work

COPY ./ddsk.hs .

RUN cabal update

RUN cabal install --lib random

RUN ghc -o ./ddsk ./ddsk.hs

ENTRYPOINT ["./ddsk"]
