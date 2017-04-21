context( "Testing functions in file hello.R" )

describe( "Testing output function hello()", {
  it( "Works", {
    expect_output( hello(), "Hello, world!" )
  })
})
