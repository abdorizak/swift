// RUN: %target-swift-frontend -emit-silgen -primary-file %s -verify -module-name main

@propertyWrapper
struct Wrapper<T> {
  var wrappedValue: T
  init(wrappedValue initialValue: T) {
    wrappedValue = initialValue
  }
}

@Wrapper var value: Int = 17

func f() {
  _ = value
  value = 20
}
f()
