# 하스켈 기본 문법

- 하스켈 툴체인은 아래와 같다. ghcup를 통해 설치할 수 있다.
    - [GHC](https://www.haskell.org/ghc/): Glasgow Haskell 컴파일러
        
        ```jsx
        // 컴파일 
        ghc hello.hs 
        
        // 컴파일된 프로그램 실행
        ./hello
        
        // 컴파일 시 워닝도 함께 출력
        ghc -Wall hello.hs -fforce-recomp
        
        // 컴파일 + 프로그램 실행
        runghc hello.hs
        
        // 컴파일된 파일을 파일로 리디랙션
        runghc hello.hs > hello.html
        ```
        
    - [cabal-install](https://cabal.readthedocs.io/): Haskell 소프트웨어 관리를 위한 Cabal 설치 도구
    - [Stack](https://docs.haskellstack.org/): 하스켈 프로젝트 개발을 위한 크로스 플랫폼 프로그램
    - [haskell-language-server](https://github.com/haskell/haskell-language-server): 개발자가 편집기/IDE와 통합하기 위한 언어 서버

- 변수명은 소문자로 시작해야 한다.
- 한 파일에 동일한 이름을 두 번 이상 사용할 수 없다.
- 선언하는 순서는 상관없다. 이름 먼저 사용 후 할당해도 된다.
- 타입은 `변수명 :: 타입` 형태로 작성하면 된다.
    - `myHtml :: String`
- 타입 작성 시 파라미터의 개수마다 리턴으로 넘어간다. js처럼 하나의 함수는 in/out 타입 하나씩이 아니다.
    
    ```haskell
    // X
    addThree :: [Int] -> Int
    // O
    addThree :: Int -> Int -> Int -> Int  
    addThree x y z = x + y + z
    ```
    
- boolean은 True, False 로 사용해야 한다.
- 함수 실행을 위해 괄호가 필요하지 않다.
    - js: `doSomething(’aa’)`
    - hs: `doSomething “aa”`
    

### Reference

- [https://www.haskell.org/ghcup/steps/](https://www.haskell.org/ghcup/steps/)
- [https://lhbg-book.link/print.html](https://lhbg-book.link/print.html)
- [http://learnyouahaskell.com/starting-out#ready-set-go](http://learnyouahaskell.com/starting-out#ready-set-go)