
> eslint-plugin-unicorn@7.1.0 test /Users/ankeet.maini/Code/eslint-plugin-unicorn
> xo && nyc ava --verbose


  test/catch-error-name.js:125:3
  ⚠  125:3  Unexpected todo comment.  no-warning-comments

  test/custom-error-definition.js:359:3
  ⚠  359:3  Unexpected todo comment.  no-warning-comments

  2 warnings

  ✔ get-docs-url › returns the URL of the a named rule's documentation
  ✔ get-docs-url › determines the rule name from the file
  ✔ error-message › valid: throw new Error('error')
  ✔ error-message › valid: throw new TypeError('error')
  ✔ error-message › valid: throw new MyCustomError('error')
  ✔ error-message › valid: throw new MyCustomError()
  ✔ error-message › valid: throw generateError()
  ✔ error-message › valid: throw new Error(lineNumber=2)
  ✔ error-message › valid: throw new Error([])
  ✔ error-message › valid: throw foo()
  ✔ error-message › valid: throw err
  ✔ error-message › valid: throw 1
  ✔ error-message › valid: const err = TypeError('error');
  		 throw err;
  ✔ error-message › invalid: throw new Error()
  ✔ error-message › invalid: throw Error()
  ✔ error-message › invalid: throw new Error('')
  ✔ error-message › invalid: 
  			const err = new Error();
  			throw err;
			
  ✔ error-message › invalid: 
  			let err = 1;
  			err = new Error();
  			throw err;
			
  ✔ error-message › invalid: 
  			let err = new Error();
  			err = 1;
  			throw err;
			
  ✔ custom-error-definition › valid: class Foo { }
  ✔ custom-error-definition › valid: class Foo extends Bar { }
  ✔ custom-error-definition › valid: class Foo extends Bar() { }
  ✔ custom-error-definition › valid: const Foo = class { }
  ✔ custom-error-definition › valid: 
  			const FooError = class extends Error {
  				constructor(message) {
  					super(message);
  					this.name = 'FooError';
  				}
  			}
		
  ✔ custom-error-definition › valid: 
  			class FooError extends Http.ProtocolError {
  				constructor(message) {
  					super(message);
  					this.name = 'FooError';
  				}
  			}
		
  ✔ custom-error-definition › valid: 
  			class FooError extends Error {
  				constructor(message) {
  					super(message);
  					this.name = 'FooError';
  				}
  			}
		
  ✔ custom-error-definition › valid: 
  			class FooError extends Error {
  				constructor() {
  					super('My super awesome Foo Error');
  					this.name = 'FooError';
  				}
  			}
		
  ✔ custom-error-definition › valid: 
  			class FooError extends TypeError {
  				constructor() {
  					super();
  					this.name = 'FooError';
  				}
  			}
		
  ✔ custom-error-definition › valid: 
  			export class FooError extends TypeError {
  				constructor() {
  					super();
  					this.name = 'FooError';
  				}
  			};
		
  ✔ custom-error-definition › valid: 
  			export default class FooError extends TypeError {
  				constructor() {
  					super();
  					this.name = 'FooError';
  				}
  			};
		
  ✔ custom-error-definition › valid: 
  			module.exports = class FooError extends TypeError {
  				constructor() {
  					super();
  					this.name = 'FooError';
  				}
  			};
		
  ✔ custom-error-definition › valid: 
  			exports.FooError = class FooError extends TypeError {
  				constructor() {
  					super();
  					this.name = 'FooError';
  				}
  			};
		
  ✔ custom-error-definition › valid: 
  			exports.FooError = class extends Error {
  				constructor(error) {
  					super(error);
  				}
  			};
		
  ✔ custom-error-definition › valid: 
  			exports.fooError = class extends Error {
  				constructor(error) {
  					super(error);
  					this.name = 'fooError';
  				}
  			};
		
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {}
			
  ✔ custom-error-definition › invalid: 
  				class fooError extends Error {
  					constructor(message) {
  						super(message);
  						this.name = 'FooError';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class fooError extends Error {
  					constructor(message) {
  						super(message);
  						this.name = 'fooError';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class Foo extends Error {
  					constructor(message) {
  						super(message);
  						this.name = 'Foo';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class fooerror extends Error {
  					constructor(message) {
  						super(message);
  						this.name = 'fooerror';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor() { }
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor() {
  						super();
  						this.message = 'My custom message';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor() {
  						super();
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor() {
  						super('My awesome Foo Error');
  						this.name = this.constructor.name;
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor(message) {
  						super(message);
  						this.message = message;
  						this.name = 'FooError';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor(message) {
  						super();
  						this.message = message;
  						this.name = 'FooError';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor(message) {
  						super();
  						this.message = message;
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Error {
  					constructor(message) {
  						super();
  						this.name = 'FooError';
  						this.message = message;
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				class FooError extends Http.ProtocolError {
  					constructor() {
  						super();
  						this.name = 'foo';
  					}
  				}
			
  ✔ custom-error-definition › invalid: 
  				module.exports = class FooError extends TypeError {
  					constructor() {
  						super();
  						this.name = 'foo';
  					}
  				};
			
  ✔ custom-error-definition › invalid: 
  				exports.FooError = class FooError extends TypeError {
  					constructor() {
  						super();
  						this.name = 'foo';
  					}
  				};
			
  ✔ custom-error-definition › invalid: 
  				export class FooError extends TypeError {
  					constructor() {
  						super();
  						this.name = 'foo';
  					}
  				};
			
  ✔ custom-error-definition › invalid: 
  				export default class FooError extends TypeError {
  					constructor() {
  						super();
  						this.name = 'foo';
  					}
  				};
			
  ✔ escape-case › valid: const foo = "\xA9";
  ✔ escape-case › valid: const foo = "\uD834";
  ✔ escape-case › valid: const foo = "\u{1D306}";
  ✔ escape-case › valid: const foo = "\cA";
  ✔ escape-case › valid: const foo = `\xA9`;
  ✔ escape-case › valid: const foo = `\uD834`;
  ✔ escape-case › valid: const foo = `\u{1D306}`;
  ✔ escape-case › valid: const foo = `\cA`;
  ✔ escape-case › valid: const foo = `\uD834foo`;
  ✔ escape-case › valid: const foo = `foo\uD834`;
  ✔ escape-case › valid: const foo = `foo \uD834`;
  ✔ escape-case › valid: const foo = `${"� foo"} \uD834`;
  ✔ escape-case › valid: const foo = "\uD834foo";
  ✔ escape-case › valid: const foo = "foo\uD834";
  ✔ escape-case › valid: const foo = "foo \uD834";
  ✔ escape-case › valid: const foo = "foo \u2500";
  ✔ escape-case › valid: const foo = "foo \x46";
  ✔ escape-case › valid: const foo = `foo \u2500`;
  ✔ escape-case › valid: const foo = `foo \x46`;
  ✔ escape-case › valid: const foo = "foo\\xbar";
  ✔ escape-case › valid: const foo = "foo\\ubarbaz";
  ✔ escape-case › valid: const foo = "foo\\\\xbar";
  ✔ escape-case › valid: const foo = "foo\\\\ubarbaz";
  ✔ escape-case › valid: const foo = `foo\\xbar`;
  ✔ escape-case › valid: const foo = `foo\\ubarbaz`;
  ✔ escape-case › valid: const foo = `foo\\\\xbar`;
  ✔ escape-case › valid: const foo = `foo\\\\ubarbaz`;
  ✔ escape-case › invalid: const foo = "\xa9";
  ✔ escape-case › invalid: const foo = "\ud834";
  ✔ escape-case › invalid: const foo = "\u{1d306}";
  ✔ escape-case › invalid: const foo = "\ca";
  ✔ escape-case › invalid: const foo = `\xa9`;
  ✔ escape-case › invalid: const foo = `\ud834`;
  ✔ escape-case › invalid: const foo = `\u{1d306}`;
  ✔ escape-case › invalid: const foo = `\ca`;
  ✔ escape-case › invalid: const foo = `\ud834foo`;
  ✔ escape-case › invalid: const foo = `foo\ud834`;
  ✔ escape-case › invalid: const foo = `foo \ud834`;
  ✔ escape-case › invalid: const foo = `${"� foo"} \ud834`;
  ✔ escape-case › invalid: const foo = "\ud834foo";
  ✔ escape-case › invalid: const foo = "foo\ud834";
  ✔ escape-case › invalid: const foo = "foo \ud834";
  ✔ escape-case › invalid: const foo = "\\\ud834foo";
  ✔ escape-case › invalid: const foo = "foo\\\ud834";
  ✔ escape-case › invalid: const foo = "foo \\\ud834";
  ✔ escape-case › invalid: const foo = `\\\ud834foo`;
  ✔ escape-case › invalid: const foo = `foo\\\ud834`;
  ✔ escape-case › invalid: const foo = `foo \\\ud834`;
  ✔ import-index › valid: const m = require('.')
  ✔ import-index › valid: const m = require('..')
  ✔ import-index › valid: const m = require('../..')
  ✔ import-index › valid: const m = require('./foobar')
  ✔ import-index › valid: const m = require('foobar')
  ✔ import-index › valid: const m = require('index')
  ✔ import-index › valid: const m = require('index.js')
  ✔ import-index › valid: const m = require('indexbar')
  ✔ import-index › valid: const m = require('fooindex')
  ✔ import-index › valid: const m = require('@index/foo')
  ✔ import-index › valid: const m = require('@foo/index')
  ✔ import-index › valid: const m = require('@foo/index.js')
  ✔ import-index › valid: import m from '.'
  ✔ import-index › valid: import m from '..'
  ✔ import-index › valid: import m from '../..'
  ✔ import-index › valid: import m from './foobar'
  ✔ import-index › valid: import m from 'foobar'
  ✔ import-index › valid: import m from 'index'
  ✔ import-index › valid: import m from 'index.js'
  ✔ import-index › valid: import m from 'indexbar'
  ✔ import-index › valid: import m from 'fooindex'
  ✔ import-index › valid: import m from '@index/foo'
  ✔ import-index › valid: import m from '@foo/index'
  ✔ import-index › valid: import m from '@foo/index.js'
  ✔ import-index › invalid: const m = require('./')
  ✔ import-index › invalid: const m = require('./index')
  ✔ import-index › invalid: const m = require('./index.js')
  ✔ import-index › invalid: const m = require('../../index.js')
  ✔ import-index › invalid: const m = require('./foo/index.js')
  ✔ import-index › invalid: const m = require('./foobar/')
  ✔ import-index › invalid: const m = require('@foo/index/index')
  ✔ import-index › invalid: const m = require('@foo/index/index.js')
  ✔ import-index › invalid: import m from './'
  ✔ import-index › invalid: import m from './index'
  ✔ import-index › invalid: import m from './index.js'
  ✔ import-index › invalid: import m from '../../index'
  ✔ import-index › invalid: import m from './foo/index.js'
  ✔ import-index › invalid: import m from './foobar/'
  ✔ import-index › invalid: import m from '@foo/index/index'
  ✔ import-index › invalid: import m from '@foo/index/index.js'
  ✔ explicit-length-check › valid: array.foo (127ms)
  ✔ explicit-length-check › valid: array.length
  ✔ explicit-length-check › valid: array.length === 0
  ✔ explicit-length-check › valid: array.length !== 0
  ✔ explicit-length-check › valid: array.length > 0
  ✔ explicit-length-check › valid: if (array.foo) {}
  ✔ explicit-length-check › valid: if (length) {}
  ✔ explicit-length-check › valid: if ([].length > 0) {}
  ✔ explicit-length-check › valid: if ("".length > 0) {}
  ✔ explicit-length-check › valid: if (array.length === 0) {}
  ✔ explicit-length-check › valid: if (array.length == 0) {}
  ✔ explicit-length-check › valid: if (array.length !== 0) {}
  ✔ explicit-length-check › valid: if (array.length !== 0 && array[0] === 1) {}
  ✔ explicit-length-check › valid: if (array.length === 1) {}
  ✔ explicit-length-check › valid: if (array.length <= 1) {}
  ✔ explicit-length-check › valid: if (array.length > 1) {}
  ✔ explicit-length-check › valid: if (array.length < 2) {}
  ✔ explicit-length-check › valid: const foo = [].length === 0 ? null : undefined
  ✔ explicit-length-check › valid: array.length v2
  ✔ explicit-length-check › valid: array.length > 0 v2
  ✔ explicit-length-check › valid: array.length >= 1
  ✔ explicit-length-check › valid: if ("".length !== 0) {}
  ✔ explicit-length-check › valid: if ([].length === 0) {}
  ✔ explicit-length-check › valid: if ([].length === 1) {}
  ✔ explicit-length-check › valid: if ([].length <= 1) {}
  ✔ explicit-length-check › valid: if ("".length == 0) {}
  ✔ explicit-length-check › valid: array.length !== 0 v2
  ✔ explicit-length-check › valid: array.length >= 1 v2
  ✔ explicit-length-check › valid: if ("".length > 0) {} v2
  ✔ explicit-length-check › valid: if ("".length >= 0) {}
  ✔ explicit-length-check › valid: if ("".length >= 2) {}
  ✔ explicit-length-check › valid: if ("".length >= 1) {}
  ✔ explicit-length-check › valid: array.length !== 0 v3
  ✔ explicit-length-check › valid: array.length > 0 v3
  ✔ explicit-length-check › valid: if ("".length === 0) {}
  ✔ explicit-length-check › valid: if ("".length > 2) {}
  ✔ explicit-length-check › valid: if ("".length === 2) {}
  ✔ explicit-length-check › valid: if ("".length === 0 && array.length >= 1) {}
  ✔ explicit-length-check › valid: if ("".length === 0 && array.length > 0) {}
  ✔ explicit-length-check › valid: if ("".length === 0 && array.length !== 0) {}
  ✔ explicit-length-check › invalid: if ([].length) {}
  ✔ explicit-length-check › invalid: if ("".length) {}
  ✔ explicit-length-check › invalid: if (array.length) {}
  ✔ explicit-length-check › invalid: if (!array.length) {}
  ✔ explicit-length-check › invalid: if (array.foo.length) {}
  ✔ explicit-length-check › invalid: if (!!array.length) {}
  ✔ explicit-length-check › invalid: if (array.length && array[0] === 1) {}
  ✔ explicit-length-check › invalid: if (array[0] === 1 || array.length) {}
  ✔ explicit-length-check › invalid: if (array.length < 1) {}
  ✔ explicit-length-check › invalid: if (array.length<1) {}
  ✔ explicit-length-check › invalid: if (array.length > 0) {}
  ✔ explicit-length-check › invalid: if (array.length >= 1) {}
  ✔ explicit-length-check › invalid: if (array.length != 0) {}
  ✔ explicit-length-check › invalid: if (array.length !== 0) {}
  ✔ explicit-length-check › invalid: if (array.length >= 1) {} v2
  ✔ explicit-length-check › invalid: if (array.length != 0) {} v2
  ✔ explicit-length-check › invalid: if (array.length !== 0) {} v2
  ✔ explicit-length-check › invalid: if (array.length > 0) {} v2
  ✔ explicit-length-check › invalid: if (array.length < 1 || array.length >= 1) {}
  ✔ explicit-length-check › invalid: const foo = [].length ? null : undefined
  ✔ filename-case › valid: foo() (210ms)
  ✔ filename-case › valid: foo() v2
  ✔ filename-case › valid: foo() v3
  ✔ filename-case › valid: foo() v4
  ✔ filename-case › valid: foo() v5
  ✔ filename-case › valid: foo() v6
  ✔ filename-case › valid: foo() v7
  ✔ filename-case › valid: foo() v8
  ✔ filename-case › valid: foo() v9
  ✔ filename-case › valid: foo() v10
  ✔ filename-case › valid: foo() v11
  ✔ filename-case › valid: foo() v12
  ✔ filename-case › valid: foo() v13
  ✔ filename-case › valid: foo() v14
  ✔ filename-case › valid: foo() v15
  ✔ filename-case › valid: foo() v16
  ✔ filename-case › valid: foo() v17
  ✔ filename-case › valid: foo() v18
  ✔ filename-case › valid: foo() v19
  ✔ filename-case › valid: foo() v20
  ✔ filename-case › valid: foo() v21
  ✔ filename-case › valid: foo() v22
  ✔ filename-case › valid: foo() v23
  ✔ filename-case › valid: foo() v24
  ✔ filename-case › valid: foo() v25
  ✔ filename-case › valid: foo() v26
  ✔ filename-case › valid: foo() v27
  ✔ filename-case › valid: foo() v28
  ✔ filename-case › valid: foo() v29
  ✔ filename-case › valid: foo() v30
  ✔ filename-case › valid: foo() v31
  ✔ filename-case › valid: foo() v32
  ✔ filename-case › valid: foo() v33
  ✔ filename-case › valid: foo() v34
  ✔ filename-case › valid: foo() v35
  ✔ filename-case › valid: foo() v36
  ✔ filename-case › valid: foo() v37
  ✔ filename-case › valid: foo() v38
  ✔ filename-case › valid: foo() v39
  ✔ filename-case › valid: foo() v40
  ✔ filename-case › valid: foo() v41
  ✔ filename-case › valid: foo() v42
  ✔ filename-case › valid: foo() v43
  ✔ filename-case › valid: foo() v44
  ✔ filename-case › valid: foo() v45
  ✔ filename-case › valid: foo() v46
  ✔ filename-case › valid: foo() v47
  ✔ filename-case › valid: foo() v48
  ✔ filename-case › invalid: foo()
  ✔ filename-case › invalid: foo() v2
  ✔ filename-case › invalid: foo() v3
  ✔ filename-case › invalid: foo() v4
  ✔ filename-case › invalid: foo() v5
  ✔ filename-case › invalid: foo() v6
  ✔ filename-case › invalid: foo() v7
  ✔ filename-case › invalid: foo() v8
  ✔ filename-case › invalid: foo() v9
  ✔ filename-case › invalid: foo() v10
  ✔ filename-case › invalid: foo() v11
  ✔ filename-case › invalid: foo() v12
  ✔ filename-case › invalid: foo() v13
  ✔ filename-case › invalid: foo() v14
  ✔ filename-case › invalid: foo() v15
  ✔ filename-case › invalid: foo() v16
  ✔ filename-case › invalid: foo() v17
  ✔ filename-case › invalid: foo() v18
  ✔ filename-case › invalid: foo() v19
  ✔ filename-case › invalid: foo() v20
  ✔ filename-case › invalid: foo() v21
  ✔ catch-error-name › valid: try {} catch (error) {} (147ms)
  ✔ catch-error-name › valid: try {} catch (_) {}
  ✔ catch-error-name › valid: try {} catch (_) { console.log(foo); }
  ✔ catch-error-name › valid: try {} catch (err) {}
  ✔ catch-error-name › valid: try {} catch (outerError) { try {} catch (innerError) {} }
  ✔ catch-error-name › valid: 
  			const handleError = error => {
  				try {
  					doSomething();
  				} catch (error2) {
  					console.log(error2);
  				}
  			}
		
  ✔ catch-error-name › valid: 
  			const handleError = err => {
  				try {
  					doSomething();
  				} catch (err2) {
  					console.log(err2);
  				}
  			}
		
  ✔ catch-error-name › valid: 
  			const handleError = error => {
  				const error2 = new Error('🦄');

  				try {
  					doSomething();
  				} catch (error3) {
  					console.log(error3);
  				}
  			}
		
  ✔ catch-error-name › valid: obj.catch(error => {})
  ✔ catch-error-name › valid: 
  			const handleError = error => {
  				obj.catch(error2 => { });
  			}
		
  ✔ catch-error-name › valid: 
  			const handleError = err => {
  				obj.catch(err2 => { });
  			}
		
  ✔ catch-error-name › valid: 
  			const handleError = error => {
  				const error2 = new Error('foo bar');

  				obj.catch(error3 => { });
  			}
		
  ✔ catch-error-name › valid: 
  			const handleError = error => {
  				const error2 = new Error('foo bar');
  				const error3 = new Error('foo bar');
  				const error4 = new Error('foo bar');
  				const error5 = new Error('foo bar');
  				const error6 = new Error('foo bar');
  				const error7 = new Error('foo bar');
  				const error8 = new Error('foo bar');
  				const error9 = new Error('foo bar');
  				const error10 = new Error('foo bar');

  				obj.catch(error11 => { });
  			}
		
  ✔ catch-error-name › valid: obj.catch(() => {})
  ✔ catch-error-name › valid: obj.catch((_) => {})
  ✔ catch-error-name › valid: obj.catch((_) => { console.log(foo); })
  ✔ catch-error-name › valid: obj.catch(err => {})
  ✔ catch-error-name › valid: obj.catch(outerError => { return obj2.catch(innerError => {}) })
  ✔ catch-error-name › valid: obj.catch(function (error) {})
  ✔ catch-error-name › valid: obj.catch(function () {})
  ✔ catch-error-name › valid: obj.catch(function (err) {})
  ✔ catch-error-name › valid: obj.catch(function (outerError) { return obj2.catch(function (innerError) {}) })
  ✔ catch-error-name › valid: obj.catch()
  ✔ catch-error-name › valid: obj.catch(_ => { console.log(_); })
  ✔ catch-error-name › valid: obj.catch(function (_) { console.log(_); })
  ✔ catch-error-name › valid: foo(function (error) {})
  ✔ catch-error-name › valid: foo().then(function (error) {})
  ✔ catch-error-name › valid: foo().catch(function (error) {})
  ✔ catch-error-name › valid: try {} catch (_) {} v2
  ✔ catch-error-name › valid: try {} catch (_) { try {} catch (_) {} }
  ✔ catch-error-name › valid: try {} catch (_) { console.log(_); }
  ✔ catch-error-name › valid: 
  				const handleError = error => {
  					try {
  						doSomething();
  					} catch (_) {
  						console.log(_);
  					}
  				}
		
  ✔ catch-error-name › valid: obj.catch(_ => {})
  ✔ catch-error-name › valid: try {} catch (skipErr) {}
  ✔ catch-error-name › invalid: try {} catch (err) {}
  ✔ catch-error-name › invalid: try {} catch (error) {}
  ✔ catch-error-name › invalid: try {} catch ({message}) {}
  ✔ catch-error-name › invalid: try {} catch (outerError) {}
  ✔ catch-error-name › invalid: try {} catch (innerError) {}
  ✔ catch-error-name › invalid: obj.catch(err => {})
  ✔ catch-error-name › invalid: obj.catch(error => {})
  ✔ catch-error-name › invalid: obj.catch(({message}) => {})
  ✔ catch-error-name › invalid: obj.catch(function (err) {})
  ✔ catch-error-name › invalid: obj.catch(function ({message}) {})
  ✔ catch-error-name › invalid: obj.catch(function (error) {})
  ✔ catch-error-name › invalid: 
  				const handleError = error => {
  					try {
  						doSomething();
  					} catch (foo) {
  						console.log(foo);
  					}
  				}
			
  ✔ catch-error-name › invalid: 
  				const handleError = error => {
  					const error9 = new Error('foo bar');

  					try {
  						doSomething();
  					} catch (foo) {
  						console.log(foo);
  					}
  				}
			
  ✔ catch-error-name › invalid: 
  				const handleError = error => {
  					const error2 = new Error('foo bar');

  					obj.catch(foo => { });
  				}
			
  ✔ catch-error-name › invalid: 
  				const handleError = error => {
  					const error2 = new Error('foo bar');

  					obj.catch(foo => { });
  				}
  			 v2
  ✔ catch-error-name › invalid: 
  				obj.catch(err => {});
  				obj.catch(err => {});
			
  ✔ catch-error-name › invalid: try {} catch (_error) {}
  ✔ throw-new-error › valid: throw new Error()
  ✔ throw-new-error › valid: new Error()
  ✔ throw-new-error › valid: throw new TypeError()
  ✔ throw-new-error › valid: throw new EvalError()
  ✔ throw-new-error › valid: throw new RangeError()
  ✔ throw-new-error › valid: throw new ReferenceError()
  ✔ throw-new-error › valid: throw new SyntaxError()
  ✔ throw-new-error › valid: throw new URIError()
  ✔ throw-new-error › valid: throw new CustomError()
  ✔ throw-new-error › valid: throw new FooBarBazError()
  ✔ throw-new-error › valid: throw new ABCError()
  ✔ throw-new-error › invalid: throw Error()
  ✔ throw-new-error › invalid: throw Error('foo')
  ✔ throw-new-error › invalid: throw CustomError('foo')
  ✔ throw-new-error › invalid: throw FooBarBazError('foo')
  ✔ throw-new-error › invalid: throw ABCError('foo')
  ✔ throw-new-error › invalid: throw Abc3Error('foo')
  ✔ throw-new-error › invalid: throw TypeError()
  ✔ throw-new-error › invalid: throw EvalError()
  ✔ throw-new-error › invalid: throw RangeError()
  ✔ throw-new-error › invalid: throw ReferenceError()
  ✔ throw-new-error › invalid: throw SyntaxError()
  ✔ throw-new-error › invalid: throw URIError()
  ✔ prefer-text-content › valid: innerText;
  ✔ prefer-text-content › valid: node.textContent;
  ✔ prefer-text-content › valid: node[innerText];
  ✔ prefer-text-content › valid: innerText = true;
  ✔ prefer-text-content › valid: node['innerText'];
  ✔ prefer-text-content › invalid: node.innerText;
  ✔ prefer-text-content › invalid: node.innerText = 'foo';
  ✔ regex-shorthand › valid: const foo = /\d/
  ✔ regex-shorthand › valid: const foo = /\W/i
  ✔ regex-shorthand › valid: const foo = /\w/ig
  ✔ regex-shorthand › valid: const foo = /[a-z]/ig
  ✔ regex-shorthand › valid: const foo = /\d*?/ig
  ✔ regex-shorthand › valid: const foo = /[a-z0-9_]/
  ✔ regex-shorthand › valid: const foo = new RegExp('\d')
  ✔ regex-shorthand › valid: const foo = new RegExp('\d', 'ig')
  ✔ regex-shorthand › valid: const foo = new RegExp('\d*?')
  ✔ regex-shorthand › valid: const foo = new RegExp('[a-z]', 'i')
  ✔ regex-shorthand › valid: const foo = new RegExp(/\d/)
  ✔ regex-shorthand › valid: const foo = new RegExp(/\d/ig)
  ✔ regex-shorthand › valid: const foo = new RegExp(/\d/, 'ig')
  ✔ regex-shorthand › valid: const foo = new RegExp(/\d*?/)
  ✔ regex-shorthand › valid: const foo = new RegExp(/[a-z]/, 'i')
  ✔ regex-shorthand › valid: const foo = new RegExp(/^[^*]*[*]?$/)
  ✔ regex-shorthand › invalid: const foo = /[0-9]/
  ✔ regex-shorthand › invalid: const foo = new RegExp('[0-9]')
  ✔ regex-shorthand › invalid: const foo = new RegExp("[0-9]")
  ✔ regex-shorthand › invalid: const foo = new RegExp("'[0-9]'")
  ✔ regex-shorthand › invalid: const foo = /[0-9]/ig
  ✔ regex-shorthand › invalid: const foo = new RegExp('[0-9]', 'ig')
  ✔ regex-shorthand › invalid: const foo = /[^0-9]/
  ✔ regex-shorthand › invalid: const foo = /[A-Za-z0-9_]/
  ✔ regex-shorthand › invalid: const foo = /[A-Za-z\d_]/
  ✔ regex-shorthand › invalid: const foo = /[a-zA-Z0-9_]/
  ✔ regex-shorthand › invalid: const foo = /[a-zA-Z\d_]/
  ✔ regex-shorthand › invalid: const foo = /[A-Za-z0-9_]+[0-9]?\.[A-Za-z0-9_]*/
  ✔ regex-shorthand › invalid: const foo = /[a-z0-9_]/i
  ✔ regex-shorthand › invalid: const foo = /[a-z\d_]/i
  ✔ regex-shorthand › invalid: const foo = /[^A-Za-z0-9_]/
  ✔ regex-shorthand › invalid: const foo = /[^A-Za-z\d_]/
  ✔ regex-shorthand › invalid: const foo = /[^a-z0-9_]/i
  ✔ regex-shorthand › invalid: const foo = /[^a-z\d_]/i
  ✔ regex-shorthand › invalid: const foo = /[^a-z\d_]/ig
  ✔ regex-shorthand › invalid: const foo = /[^\d_a-z]/ig
  ✔ regex-shorthand › invalid: const foo = new RegExp(/[0-9]/)
  ✔ regex-shorthand › invalid: const foo = new RegExp(/[0-9]/, 'ig')
  ✔ regex-shorthand › invalid: const foo = new RegExp(/[0-9]/) v2
  ✔ regex-shorthand › invalid: const foo = new RegExp(/[0-9]/, 'ig') v2
  ✔ prefer-starts-ends-with › valid: foo.startsWith("bar")
  ✔ prefer-starts-ends-with › valid: foo.endsWith("bar")
  ✔ prefer-starts-ends-with › valid: reject(new Error("foo"))
  ✔ prefer-starts-ends-with › valid: "".test()
  ✔ prefer-starts-ends-with › valid: test()
  ✔ prefer-starts-ends-with › valid: test.test()
  ✔ prefer-starts-ends-with › valid: startWith("bar")
  ✔ prefer-starts-ends-with › valid: foo()()
  ✔ prefer-starts-ends-with › valid: /foo/.test(bar)
  ✔ prefer-starts-ends-with › valid: /^foo$/.test(bar)
  ✔ prefer-starts-ends-with › valid: /^foo+/.test(bar)
  ✔ prefer-starts-ends-with › valid: /foo+$/.test(bar)
  ✔ prefer-starts-ends-with › valid: /^[f,a]/.test(bar)
  ✔ prefer-starts-ends-with › valid: /[f,a]$/.test(bar)
  ✔ prefer-starts-ends-with › valid: /^\w/.test(bar)
  ✔ prefer-starts-ends-with › valid: /\w$/.test(bar)
  ✔ prefer-starts-ends-with › valid: /^foo./.test(bar)
  ✔ prefer-starts-ends-with › valid: /foo.$/.test(bar)
  ✔ prefer-starts-ends-with › valid: /\^foo/.test(bar)
  ✔ prefer-starts-ends-with › valid: /^foo/i.test(bar)
  ✔ prefer-starts-ends-with › valid: bar.match(/foo/)
  ✔ prefer-starts-ends-with › valid: bar.match(/^foo$/)
  ✔ prefer-starts-ends-with › valid: bar.match(/^foo+/)
  ✔ prefer-starts-ends-with › valid: bar.match(/foo+$/)
  ✔ prefer-starts-ends-with › valid: bar.match(/^[f,a]/)
  ✔ prefer-starts-ends-with › valid: bar.match(/[f,a]$/)
  ✔ prefer-starts-ends-with › valid: bar.match(/^\w/)
  ✔ prefer-starts-ends-with › valid: bar.match(/\w$/)
  ✔ prefer-starts-ends-with › valid: bar.match(/^foo./)
  ✔ prefer-starts-ends-with › valid: bar.match(/foo.$/)
  ✔ prefer-starts-ends-with › valid: bar.match(/\^foo/)
  ✔ prefer-starts-ends-with › valid: bar.match(/^foo/i)
  ✔ prefer-starts-ends-with › invalid: /^foo/.test(bar)
  ✔ prefer-starts-ends-with › invalid: /foo$/.test(bar)
  ✔ prefer-starts-ends-with › invalid: /^!/.test(bar)
  ✔ prefer-starts-ends-with › invalid: /!$/.test(bar)
  ✔ prefer-starts-ends-with › invalid: /^ /.test(bar)
  ✔ prefer-starts-ends-with › invalid: / $/.test(bar)
  ✔ prefer-starts-ends-with › invalid: bar.match(/^foo/)
  ✔ prefer-starts-ends-with › invalid: bar.match(/foo$/)
  ✔ prefer-starts-ends-with › invalid: bar.match(/^!/)
  ✔ prefer-starts-ends-with › invalid: bar.match(/!$/)
  ✔ prefer-starts-ends-with › invalid: bar.match(/^ /)
  ✔ prefer-starts-ends-with › invalid: bar.match(/ $/)
  ✔ prefer-spread › valid: [...set].map(() => {});
  ✔ prefer-spread › valid: Int8Array.from(set);
  ✔ prefer-spread › valid: Uint8Array.from(set);
  ✔ prefer-spread › valid: Uint8ClampedArray.from(set);
  ✔ prefer-spread › valid: Int16Array.from(set);
  ✔ prefer-spread › valid: Uint16Array.from(set);
  ✔ prefer-spread › valid: Int32Array.from(set);
  ✔ prefer-spread › valid: Uint32Array.from(set);
  ✔ prefer-spread › valid: Float32Array.from(set);
  ✔ prefer-spread › valid: Float64Array.from(set);
  ✔ prefer-spread › valid: Array.from()
  ✔ prefer-spread › valid: Array.from({length: 10})
  ✔ prefer-spread › valid: Array.from({length: 10}, mapFn)
  ✔ prefer-spread › invalid: const x = Array.from(set);
  ✔ prefer-spread › invalid: Array.from(set).map(() => {});
  ✔ prefer-spread › invalid: Array.from(set, mapFn).reduce(() => {});
  ✔ prefer-spread › invalid: Array.from(set, mapFn, thisArg).reduce(() => {});
  ✔ prefer-spread › invalid: Array.from(set, () => {}, thisArg).reduce(() => {});
  ✔ prefer-spread › invalid: Array.from(new Set([1, 2])).map(() => {});
  ✔ prefer-spread › invalid: Array.from(document.querySelectorAll("*")).map(() => {});
  ✔ prefer-node-remove › valid: foo.remove()
  ✔ prefer-node-remove › valid: this.remove()
  ✔ prefer-node-remove › valid: remove()
  ✔ prefer-node-remove › valid: foo.parentNode.removeChild('bar')
  ✔ prefer-node-remove › valid: foo.parentNode['bar'](foo)
  ✔ prefer-node-remove › valid: foo.parentNode[removeChild](foo)
  ✔ prefer-node-remove › valid: foo.parentNode.removeChild()
  ✔ prefer-node-remove › invalid: foo.parentNode.removeChild(foo)
  ✔ prefer-node-remove › invalid: this.parentNode.removeChild(this)
  ✔ prefer-node-remove › invalid: parentNode.removeChild(this)
  ✔ prefer-node-remove › invalid: foo.parentNode.removeChild(bar)
  ✔ prefer-node-remove › invalid: this.parentNode.removeChild(foo)
  ✔ prefer-node-remove › invalid: foo.parentElement.removeChild(foo)
  ✔ prefer-node-remove › invalid: this.parentElement.removeChild(this)
  ✔ prefer-node-remove › invalid: parentElement.removeChild(this)
  ✔ prefer-node-remove › invalid: foo.parentElement.removeChild(bar)
  ✔ prefer-node-remove › invalid: this.parentElement.removeChild(foo)
  ✔ prefer-query-selector › valid: document.querySelector("#foo");
  ✔ prefer-query-selector › valid: document.querySelector(".bar");
  ✔ prefer-query-selector › valid: document.querySelector("main #foo .bar");
  ✔ prefer-query-selector › valid: document.querySelectorAll(".foo .bar");
  ✔ prefer-query-selector › valid: document.querySelectorAll("li a");
  ✔ prefer-query-selector › valid: document.querySelector("li").querySelectorAll("a");
  ✔ prefer-query-selector › invalid: document.getElementById("foo");
  ✔ prefer-query-selector › invalid: document.getElementsByClassName("foo");
  ✔ prefer-query-selector › invalid: document.getElementsByClassName("foo bar");
  ✔ prefer-query-selector › invalid: document.getElementsByTagName("foo");
  ✔ prefer-query-selector › invalid: document.getElementById("");
  ✔ prefer-query-selector › invalid: document.getElementById('foo');
  ✔ prefer-query-selector › invalid: document.getElementsByClassName('foo');
  ✔ prefer-query-selector › invalid: document.getElementsByClassName('foo bar');
  ✔ prefer-query-selector › invalid: document.getElementsByTagName('foo');
  ✔ prefer-query-selector › invalid: document.getElementsByClassName('');
  ✔ prefer-query-selector › invalid: document.getElementById(`foo`);
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(`foo`);
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(`foo bar`);
  ✔ prefer-query-selector › invalid: document.getElementsByTagName(`foo`);
  ✔ prefer-query-selector › invalid: document.getElementsByTagName(``);
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(`${fn()}`);
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(`foo ${undefined}`);
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(null);
  ✔ prefer-query-selector › invalid: document.getElementsByTagName(null);
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(fn());
  ✔ prefer-query-selector › invalid: document.getElementsByClassName("foo" + fn());
  ✔ prefer-query-selector › invalid: document.getElementsByClassName(foo + "bar");
  ✔ prefer-type-error › valid: if (MrFuManchu.name !== 'Fu Manchu' || MrFuManchu.isMale === false) {
  			throw new Error('How cant Fu Manchu be Fu Manchu?');
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo) || ArrayBuffer.isView(foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (wrapper.g.ary.isArray(foo) || wrapper.f.g.ary.isView(foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (wrapper.g.ary(foo) || wrapper.f.g.ary.isPiew(foo)) {
  			throw new Error();
  		}
  ✔ prefer-type-error › valid: if (Array.isArray()) {
  			throw new Error('Woohoo - isArray is broken!');
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo) || ArrayBuffer.isView(foo)) {
  			throw new CustomError();
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo)) {
  			throw new Error.foo();
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo)) {
  			throw new Error.foo;
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo)) {
  			throw new foo.Error;
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo)) {
  			throw new foo.Error('My name is Foo Manchu');
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo) || ArrayBuffer.isView(foo)) {
  			throw Error('This is fo FooBar', foo);
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo) || ArrayBuffer.isView(foo)) {
  			new Error('This is fo FooBar', foo);
  		}
  ✔ prefer-type-error › valid: function test(foo) {
  			if (Array.isArray(foo) || ArrayBuffer.isView(foo)) {
  				return new Error('This is fo FooBar', foo);
  			}
  			return foo;
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo) || ArrayBuffer.isView(foo)) {
  			lastError = new Error('This is fo FooBar', foo);
  		}
  ✔ prefer-type-error › valid: if (!isFinite(foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (isNaN(foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (isArray(foo)) {
  			throw new Error();
  		}
  ✔ prefer-type-error › valid: if (foo instanceof boo) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (typeof boo === 'Boo') {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (typeof boo === 'Boo') {
  			some.thing.else.happens.before();
  			throw new Error();
  		}
  ✔ prefer-type-error › valid: if (Number.isNaN(foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (Number.isFinite(foo) && Number.isSafeInteger(foo) && Number.isInteger(foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (Array.isArray(foo) || (Blob.isBlob(foo) || Blip.isBlip(foo))) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (typeof foo === 'object' || (Object.isFrozen(foo) || 'String' === typeof foo)) {
  			throw new TypeError();
  		}
  ✔ prefer-type-error › valid: if (isNaN) {
  			throw new Error();
  		}
  ✔ prefer-type-error › valid: if (isObjectLike) {
  			throw new Error();
  		}
  ✔ prefer-type-error › valid: if (isNaN.foo()) {
  			throw new Error();
  		}
  ✔ prefer-type-error › valid: if (typeof foo !== 'object' || foo.bar() === false) {
  			throw new TypeError('Expected Foo being bar!');
  		}
  ✔ prefer-type-error › valid: if (foo instanceof Foo) {
  			throw new TypeError('Expected Foo being bar!');
  		}
  ✔ prefer-type-error › valid: if (!foo instanceof Foo) {
  			throw new TypeError('Expected Foo being bar!');
  		}
  ✔ prefer-type-error › valid: if (foo instanceof Foo === false) {
  			throw new TypeError('Expected Foo being bar!');
  		}
  ✔ prefer-type-error › valid: throw new Error('💣')
  ✔ prefer-type-error › valid: if (!Number.isNaN(foo) && foo === 10) {
  			throw new Error('foo is not 10!');
  		}
  ✔ prefer-type-error › valid: function foo(foo) {
  			if (!Number.isNaN(foo) && foo === 10) {
  				timesFooWas10 += 1;
  				if (calculateAnswerToLife() !== 42) {
  					openIssue('Your program is buggy!');
  				} else {
  					return printAwesomeAnswer(42);
  				}
  				throw new Error('foo is 10');
  			}
  		}
  ✔ prefer-type-error › valid: function foo(foo) {
  			if (!Number.isNaN(foo)) {
  				timesFooWas10 += 1;
  				if (calculateAnswerToLife({with: foo}) !== 42) {
  					openIssue('Your program is buggy!');
  				} else {
  					return printAwesomeAnswer(42);
  				}
  				throw new Error('foo is 10');
  			}
  		}
  ✔ prefer-type-error › valid: if (!x.isFudge()) {
  			throw new Error('x is no fudge!');
  		}
  ✔ prefer-type-error › valid: if (!_.isFudge(x)) {
  			throw new Error('x is no fudge!');
  		}
  ✔ prefer-type-error › valid: switch (something) {
  			case 1:
  				break;
  			default:
  				throw new Error('Unknown');
  		}
  ✔ prefer-type-error › invalid: if (!isFinite(foo)) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (isNaN(foo) === false) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (Array.isArray(foo)) {
  				throw new Error('foo is an Array');
  			}
  ✔ prefer-type-error › invalid: if (foo instanceof bar) {
  				throw new Error(foobar);
  			}
  ✔ prefer-type-error › invalid: if (_.isElement(foo)) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (_.isElement(foo)) {
  				throw new Error;
  			}
  ✔ prefer-type-error › invalid: if (wrapper._.isElement(foo)) {
  				throw new Error;
  			}
  ✔ prefer-type-error › invalid: if (typeof foo == 'Foo' || 'Foo' === typeof foo) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (Number.isFinite(foo) && Number.isSafeInteger(foo) && Number.isInteger(foo)) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (wrapper.n.isFinite(foo) && wrapper.n.isSafeInteger(foo) && wrapper.n.isInteger(foo)) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (wrapper.f.g.n.isFinite(foo) && wrapper.g.n.isSafeInteger(foo) && wrapper.n.isInteger(foo)) {
  				throw new Error();
  			}
  ✔ prefer-type-error › invalid: if (SomeThing.isArguments(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isArray(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isArrayBuffer(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isArrayLike(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isArrayLikeObject(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isBoolean(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isBuffer(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isDate(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isElement(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isError(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isFinite(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isFunction(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isInteger(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isLength(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isMap(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isNaN(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isNative(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isNil(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isNull(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isNumber(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isObject(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isObjectLike(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isPlainObject(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isPrototypeOf(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isRegExp(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isSafeInteger(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isSet(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isString(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isSymbol(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isTypedArray(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isUndefined(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isView(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isWeakMap(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isWeakSet(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isWindow(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-type-error › invalid: if (SomeThing.isXMLDoc(foo) === bar) {
  			throw new Error('foo is bar');
  		}
  ✔ prefer-node-append › valid: parent.append(child);
  ✔ prefer-node-append › valid: document.body.append(child, 'text');
  ✔ prefer-node-append › valid: node.append()
  ✔ prefer-node-append › valid: node.append(null)
  ✔ prefer-node-append › invalid: node.appendChild(child);
  ✔ prefer-node-append › invalid: document.body.appendChild(child);
  ✔ prefer-node-append › invalid: node.appendChild()
  ✔ prefer-node-append › invalid: node.appendChild(null)
  ✔ package › Every rule is defined in index file
  ✔ prefer-exponentiation-operator › valid: a ** b;
  ✔ prefer-exponentiation-operator › valid: 2 ** 4;
  ✔ prefer-exponentiation-operator › invalid: const x = Math.pow(2, 4);
  ✔ prefer-exponentiation-operator › invalid: const x = Math.pow(-2, (2 - 4) +0 -0.2);
  ✔ prefer-exponentiation-operator › invalid: const x = Math.pow(Math.pow(2, 4), 8);
  ✔ prefer-exponentiation-operator › invalid: const x = Math.pow(2, b);
  ✔ prefer-exponentiation-operator › invalid: const x = Math.pow(c, 4);
  ✔ prefer-exponentiation-operator › invalid: const x = Math.pow(foo(), bar());
  ✔ number-literal-case › valid: const foo = 0xFF
  ✔ number-literal-case › valid: const foo = 0b11
  ✔ number-literal-case › valid: const foo = 0o10
  ✔ number-literal-case › valid: const foo = '0Xff'
  ✔ number-literal-case › invalid: const foo = 0XFF
  ✔ number-literal-case › invalid: const foo = 0xff
  ✔ number-literal-case › invalid: const foo = 0Xff
  ✔ number-literal-case › invalid: const foo = 0Xff v2
  ✔ number-literal-case › invalid: const foo = 0B11
  ✔ number-literal-case › invalid: const foo = 0O10
  ✔ number-literal-case › invalid: 
  				const foo = 255;

  				if (foo === 0xff) {
  					console.log('invalid');
  				}
			
  ✔ prefer-add-event-listener › valid: foo.addEventListener('click', () => {})
  ✔ prefer-add-event-listener › valid: foo.removeEventListener('click', onClick)
  ✔ prefer-add-event-listener › valid: foo.onclick
  ✔ prefer-add-event-listener › valid: foo.setCallBack = () => {console.log('foo')}
  ✔ prefer-add-event-listener › valid: setCallBack = () => {console.log('foo')}
  ✔ prefer-add-event-listener › valid: foo.onclick.bar = () => {}
  ✔ prefer-add-event-listener › valid: foo['x'] = true;
  ✔ prefer-add-event-listener › invalid: foo.onclick = () => {}
  ✔ prefer-add-event-listener › invalid: foo.onclick = 1
  ✔ prefer-add-event-listener › invalid: foo.bar.onclick = onClick
  ✔ prefer-add-event-listener › invalid: const bar = null; foo.onclick = bar;
  ✔ prefer-add-event-listener › invalid: foo.onkeydown = () => {}
  ✔ prefer-add-event-listener › invalid: foo.ondragend = () => {}
  ✔ prefer-add-event-listener › invalid: foo.onclick = function (e) {
  				console.log(e);
  			}
  ✔ prefer-add-event-listener › invalid: foo.onclick = null
  ✔ prefer-add-event-listener › invalid: foo.onclick = undefined
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = null
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = undefined
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = foo
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = () => 'foo'
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = () => {
  				return bar;
  			}
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = function () {
  				return 'bar';
  			}
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = function () {
  				return;
  			}
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = function () {
  				(() => {
  					return 'foo';
  				})();
  			}
  ✔ prefer-add-event-listener › invalid: window.onbeforeunload = e => {
  				console.log(e);
  			}
  ✔ prefer-key-over-key-code › valid: window.addEventListener('click', e => {
  			console.log(e.key);
  		})
  ✔ prefer-key-over-key-code › valid: const { keyCode } = e
  ✔ prefer-key-over-key-code › valid: const { charCode } = e
  ✔ prefer-key-over-key-code › valid: const {a, b, c} = event
  ✔ prefer-key-over-key-code › valid: const keyCode = () => 4
  ✔ prefer-key-over-key-code › valid: const which = keyCode => 5
  ✔ prefer-key-over-key-code › valid: function which(abc) { const {keyCode} = abc; return keyCode}
  ✔ prefer-key-over-key-code › valid: const { which } = e
  ✔ prefer-key-over-key-code › valid: const { keyCode: key } = e
  ✔ prefer-key-over-key-code › valid: const { keyCode: abc } = e
  ✔ prefer-key-over-key-code › valid: foo.addEventListener('keydown', e => {
  			(function (abc) {
  				if (e.key === 'ArrowLeft') return true;
  				const { charCode } = abc;
  			}())
  		})
  ✔ prefer-key-over-key-code › valid: foo.addEventListener('keydown', e => {
  			if (e.key === 'ArrowLeft') return true;
  		})
  ✔ prefer-key-over-key-code › valid: a.addEventListener('keyup', function (event) {
  			const key = event.key;
  		})
  ✔ prefer-key-over-key-code › valid: a.addEventListener('keyup', function (event) {
  			const { key } = event;
  		})
  ✔ prefer-key-over-key-code › valid: foo.addEventListener('click', e => {
  			const good = {};
  			good.keyCode = '34';
  		});
  ✔ prefer-key-over-key-code › valid: foo.addEventListener('click', e => {
  			const good = {};
  			good.charCode = '34';
  		});
  ✔ prefer-key-over-key-code › valid: foo.addEventListener('click', e => {
  			const good = {};
  			good.which = '34';
  		});
  ✖ prefer-key-over-key-code › valid: foo.addEventListener('click', e => {
  			const {keyCode: a, charCode: b, charCode: c} = e;
  		}); Error thrown in test
  ✔ prefer-key-over-key-code › valid: add.addEventListener('keyup', event => {
  			f.addEventList('some', e => {
  				const {charCode} = e;
  				console.log(event.key)
  			})
  		})
  ✔ prefer-key-over-key-code › invalid: 
  				window.addEventListener('click', e => {
  					console.log(e.keyCode);
  				})
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo123.addEventListener('click', event => {
  					if (event.keyCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', a => {
  					if (a.keyCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', (a, b, c) => {
  					if (a.keyCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', function(a, b, c) {
  					if (a.keyCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', function(b) {
  					if (b.keyCode === 27) {
  					}
  				});
			
  ✖ prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {keyCode, a, b} = e;
  				});
  			 Error thrown in test
  ✔ prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {a: keyCode, a, b} = e;
  				});
			
  ✖ prefer-key-over-key-code › invalid: 
  				add.addEventListener('keyup', event => {
  					f.addEventList('some', e => {
  						const {keyCode} = event;
  						console.log(event.key)
  					})
  				})
  			 Error thrown in test
  ✔ prefer-key-over-key-code › invalid: 
  				window.addEventListener('click', e => {
  					console.log(e.charCode);
  				})
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo11111111.addEventListener('click', event => {
  					if (event.charCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', a => {
  					if (a.charCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', (a, b, c) => {
  					if (a.charCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', function(a, b, c) {
  					if (a.charCode === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', function(b) {
  					if (b.charCode === 27) {
  					}
  				});
			
  ✖ prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {charCode, a, b} = e;
  				});
  			 Error thrown in test
  ✔ prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {a: charCode, a, b} = e;
  				});
			
  ✔ prefer-key-over-key-code › invalid: 
  				window.addEventListener('click', e => {
  					console.log(e.which);
  				})
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', event => {
  					if (event.which === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', a => {
  					if (a.which === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', (a, b, c) => {
  					if (a.which === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', function(a, b, c) {
  					if (a.which === 27) {
  					}
  				});
			
  ✔ prefer-key-over-key-code › invalid: 				
  				foo.addEventListener('click', function(b) {
  					if (b.which === 27) {
  					}
  				});
			
  ✖ prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {which, a, b} = e;
  				});
  			 Error thrown in test
  ✔ prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {a: which, a, b} = e;
  				});
			
  ✔ no-unsafe-regex › valid: const foo = /unicorn/
  ✔ no-unsafe-regex › valid: const foo = /unicorn/g
  ✔ no-unsafe-regex › valid: const foo = new RegExp('^unicorn')
  ✔ no-unsafe-regex › valid: const foo = new RegExp('^unicorn', 'i')
  ✔ no-unsafe-regex › valid: const foo = new RegExp(/unicorn/)
  ✔ no-unsafe-regex › valid: const foo = new RegExp(/unicorn/g)
  ✔ no-unsafe-regex › valid: const foo = new RegExp()
  ✔ no-unsafe-regex › invalid: const foo = /(x+x+)+y/
  ✔ no-unsafe-regex › invalid: const foo = /(x+x+)+y/g
  ✔ no-unsafe-regex › invalid: const foo = new RegExp('(x+x+)+y')
  ✔ no-unsafe-regex › invalid: const foo = new RegExp('(x+x+)+y', 'g')
  ✔ no-unsafe-regex › invalid: const foo = new RegExp(/(x+x+)+y/)
  ✔ no-unsafe-regex › invalid: const foo = new RegExp(/(x+x+)+y/g)
  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  console.log(foo.a, foo.b);

  ✔ no-unused-properties › valid: 
  const foo = {'a': 1, "b": 2};
  function main() {
  	console.log(foo.a, foo.b);
  }

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  console.log(foo['a'], foo["b"]);

  ✔ no-unused-properties › valid: 
  const foo = {["a"]: 1, ['b']: 2};
  console.log(foo['a'], foo["b"]);

  ✔ no-unused-properties › valid: 
  const foo = {['a']: 1, ["b"]: 2};
  console.log(foo['a'], foo["b"]);

  ✔ no-unused-properties › valid: 
  const a = Symbol('a');
  const b = 'b';
  const c = {};
  const foo = {
  	[a]: 1,
  	[b]: 2,
  	[c]: 3
  };
  console.log(foo[a]);

  ✔ no-unused-properties › valid: 
  const a = 'a';
  const foo = {
  	[a]: 1,
  };
  const a_ = a;
  console.log(foo[a_]);

  ✔ no-unused-properties › valid: 
  const a = 'a';
  const foo = {
  	[a]: 1,
  };
  console.log(foo[x]);

  ✔ no-unused-properties › valid: 
  const a = Symbol('a');
  const foo = {[a]: 1};
  console.log(foo);

  ✔ no-unused-properties › valid: 
  const b = 'b';
  const foo = {[b]: 2};
  console.log(foo);

  ✔ no-unused-properties › valid: 
  const c = {};
  const foo = {[c]: 3};
  console.log(foo);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  const {a, b} = foo;

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  ({a, b} = foo);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  console.log(foo[x]);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  function main() {
  	console.log(foo[x]);
  }

  ✔ no-unused-properties › valid: 
  const foo = {a: { b: 2 }};
  console.log(foo.a[x]);

  ✔ no-unused-properties › valid: 
  const foo = {a: { b: 2 }};
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  console.log(foo);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  function main() {
  	console.log(foo);
  }

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: 1,
  	f() {
  		return this.a;
  	}
  };

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: 1,
  	f() {
  		return this;
  	}
  };

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: 1
  };
  foo.f = function () { return this.a };

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: 1
  };
  foo.f = function () { return this };

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: {
  		b: 1
  	}
  };
  foo.a.f = function () { return this };

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: {
  		b: 1
  	}
  };
  Object.assign(foo.a, {
  	f() {
  		return this;
  	}
  });

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: 1,
  	__proto__: {
  		c: 3
  	}
  };
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  const bar = {
  	b: 2
  };
  const foo = {
  	a: 1,
  	['__proto__']: bar
  };
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: 1
  };
  foo.hasOwnProperty(x);

  ✔ no-unused-properties › valid: 
  const foo = {
  	a: {
  		b: {
  			c: 1
  		}
  	}
  };
  console.log(foo.a.b.c);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};

  ✔ no-unused-properties › valid: 
  const foo = {};
  foo.a = 1;
  foo.b = 2;
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  var foo = {};
  foo.a = 1;
  foo.b = 2;
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  var foo = {a: 1, b: 2};
  foo = { a: 3, b: 4 };
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  const foo = function () {};

  ✔ no-unused-properties › valid: 
  const foo = [];

  ✔ no-unused-properties › valid: 
  let foo;

  ✔ no-unused-properties › valid: 
  var foo;

  ✔ no-unused-properties › valid: 
  function foo() {}
  foo();

  ✔ no-unused-properties › valid: 
  const foo = {};
  export default foo;

  ✔ no-unused-properties › valid: 
  var foo = {
  	a: {
  		b: {
  			c: {
  				d: 1
  			}
  		}
  	}
  };
  export {foo};

  ✔ no-unused-properties › valid: 
  export const foo = {
  	a: 1,
  	b: 2
  };
  console.log(foo.a);

  ✔ no-unused-properties › valid: 
  var foo = {
  	a: 1
  };
  module.exports = foo;

  ✔ no-unused-properties › valid: 
  var foo = {
  	a: 1
  };
  exports.foo = foo;

  ✔ no-unused-properties › invalid: 
  const foo = {a: 1, u: 2};
  console.log(foo.a);

  ✔ no-unused-properties › invalid: 
  const foo = {"a": 1, "u": 2};
  console.log(foo.a);

  ✔ no-unused-properties › invalid: 
  const foo = {a: 1, u: 2};
  console.log(foo['a']);

  ✔ no-unused-properties › invalid: 
  const foo = {a: 1, u: 2};
  function main() {
  	console.log(foo.a);
  }

  ✔ no-unused-properties › invalid: 
  const foo = {a: 1, u: 2};
  const {a} = foo;

  ✔ no-unused-properties › invalid: 
  const foo = {a: 1, u: 2};
  ({a} = foo);

  ✔ no-unused-properties › invalid: 
  const foo = {
  	a: 1,
  	u: {
  		b: 2,
  		c: 3
  	}
  };
  console.log(foo.a);

  ✔ no-unused-properties › invalid: 
  const foo = {
  	a: 1,
  	b: {
  		c: 2,
  		u: 3
  	}
  };
  console.log(foo.a, foo.b.c);

  ✔ no-unused-properties › invalid: 
  const foo = {
  	a: 1,
  	b: {
  		c: 2,
  		u: 3
  	}
  };
  function main() {
  	console.log(foo.a, foo.b.c);
  }

  ✔ no-unused-properties › invalid: 
  const foo = {
  	a: {
  		b: 1
  	},
  	u: 2
  };
  foo.a.f = function () { return this };

  ✔ no-unused-properties › invalid: 
  const foo = {
  	a: 1,
  	[u]: 2
  };
  console.log(foo.a);

  ✔ no-unused-properties › invalid: 
  const foo = {
  	__proto__: {a: 1},
  	b: 2,
  	u: 3
  };
  console.log(foo.b);

  ✔ no-unused-properties › valid: 
  const foo = {a: 1, b: 2};
  const {a, ...rest} = foo;
   (148ms)
  ✔ no-unused-properties › valid: 
  const foo = {
  	...bar,
  };
  console.log(foo.a);

  ✔ no-unreadable-array-destructuring › valid: const [, foo] = parts;
  ✔ no-unreadable-array-destructuring › valid: const [foo] = parts;
  ✔ no-unreadable-array-destructuring › valid: const [foo,,bar] = parts;
  ✔ no-unreadable-array-destructuring › valid: const [foo,   ,     bar] = parts;
  ✔ no-unreadable-array-destructuring › valid: const [foo,] = parts;
  ✔ no-unreadable-array-destructuring › valid: const [foo,,] = parts;
  ✔ no-unreadable-array-destructuring › valid: const [foo,, bar,, baz] = parts;
  ✔ no-unreadable-array-destructuring › valid: function foo([, bar]) {}
  ✔ no-unreadable-array-destructuring › valid: function foo([bar]) {}
  ✔ no-unreadable-array-destructuring › valid: function foo([bar,,baz]) {}
  ✔ no-unreadable-array-destructuring › valid: function foo([bar,   ,     baz]) {}
  ✔ no-unreadable-array-destructuring › valid: function foo([bar,]) {}
  ✔ no-unreadable-array-destructuring › valid: function foo([bar,,]) {}
  ✔ no-unreadable-array-destructuring › valid: function foo([bar,, baz,, qux]) {}
  ✔ no-unreadable-array-destructuring › valid: const [, ...rest] = parts;
  ✔ no-unreadable-array-destructuring › invalid: const [,, foo] = parts;
  ✔ no-unreadable-array-destructuring › invalid: const [foo,,, bar] = parts;
  ✔ no-unreadable-array-destructuring › invalid: const [foo,,,] = parts;
  ✔ no-unreadable-array-destructuring › invalid: const [foo, bar,, baz ,,, qux] = parts;
  ✔ no-unreadable-array-destructuring › invalid: function foo([,, bar]) {}
  ✔ no-unreadable-array-destructuring › invalid: function foo([bar,,, baz]) {}
  ✔ no-unreadable-array-destructuring › invalid: function foo([bar,,,]) {}
  ✔ no-unreadable-array-destructuring › invalid: function foo([bar, baz,, qux ,,, quux]) {}
  ✔ no-unreadable-array-destructuring › invalid: const [,,...rest] = parts;
  ✔ no-process-exit › valid: #!/usr/bin/env node

  process.exit();
  ✔ no-process-exit › valid: Process.exit()
  ✔ no-process-exit › valid: const x = process.exit;
  ✔ no-process-exit › valid: x(process.exit)
  ✔ no-process-exit › valid: process.on("SIGINT", function() { process.exit(1); })
  ✔ no-process-exit › valid: process.on("SIGKILL", function() { process.exit(1); })
  ✔ no-process-exit › valid: process.on("SIGINT", () => { process.exit(1); })
  ✔ no-process-exit › valid: process.on("SIGINT", () => process.exit(1))
  ✔ no-process-exit › valid: process.on("SIGINT", () => { if (true) { process.exit(1); } })
  ✔ no-process-exit › valid: process.once("SIGINT", function() { process.exit(1); })
  ✔ no-process-exit › valid: process.once("SIGKILL", function() { process.exit(1); })
  ✔ no-process-exit › valid: process.once("SIGINT", () => { process.exit(1); })
  ✔ no-process-exit › valid: process.once("SIGINT", () => process.exit(1))
  ✔ no-process-exit › valid: process.once("SIGINT", () => { if (true) { process.exit(1); } })
  ✔ no-process-exit › valid: 
  ✔ no-process-exit › invalid: process.exit();
  ✔ no-process-exit › invalid: process.exit(1);
  ✔ no-process-exit › invalid: x(process.exit(1));
  ✔ no-new-buffer › valid: const buf = Buffer.from('buf') (110ms)
  ✔ no-new-buffer › valid: const buf = Buffer.from('7468697320697320612074c3a97374', 'hex')
  ✔ no-new-buffer › valid: const buf = Buffer.from([0x62, 0x75, 0x66, 0x66, 0x65, 0x72])
  ✔ no-new-buffer › valid: const buf = Buffer.alloc(10)
  ✔ no-new-buffer › invalid: const buf = new Buffer()
  ✔ no-new-buffer › invalid: const buf = new Buffer('buf')
  ✔ no-new-buffer › invalid: const buf = new Buffer('7468697320697320612074c3a97374', 'hex')
  ✔ no-new-buffer › invalid: const buf = new Buffer([0x62, 0x75, 0x66, 0x66, 0x65, 0x72])
  ✔ no-new-buffer › invalid: const buf = new Buffer(10)
  ✔ no-new-buffer › invalid: 
  				const ab = new ArrayBuffer(10);
  				const buf = new Buffer(ab, 0, 2);
			
  ✔ no-new-buffer › invalid: 
  				const buf1 = new Buffer('buf');
  				const buf2 = new Buffer(buf1);
			
  ✔ no-fn-reference-in-iterator › valid: foo.map(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.forEach(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.every(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.filter(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.find(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.findIndex(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.some(x => fn(x))
  ✔ no-fn-reference-in-iterator › valid: foo.filter(x => Boolean(x))
  ✔ no-fn-reference-in-iterator › valid: foo.filter(Boolean)
  ✔ no-fn-reference-in-iterator › valid: foo.map(x => parseInt(x, 10))
  ✔ no-fn-reference-in-iterator › valid: foo.map(x => m({foo: true})(x))
  ✔ no-fn-reference-in-iterator › valid: foo.reduce((a, b) => a + b, 0)
  ✔ no-fn-reference-in-iterator › valid: foo.reduceRight((a, b) => a.concat(b), [])
  ✔ no-fn-reference-in-iterator › valid: Promise.map(fn)
  ✔ no-fn-reference-in-iterator › valid: Promise.forEach(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.map(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.forEach(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.every(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.filter(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.find(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.findIndex(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.some(fn)
  ✔ no-fn-reference-in-iterator › invalid: foo.filter(fn) v2
  ✔ no-fn-reference-in-iterator › invalid: foo.map(parseInt)
  ✔ no-fn-reference-in-iterator › invalid: foo.map(m({foo: true}))
  ✔ no-fn-reference-in-iterator › invalid: foo.reduce(m)
  ✔ no-fn-reference-in-iterator › invalid: foo.reduce(m, 0)
  ✔ no-fn-reference-in-iterator › invalid: foo.reduce(m({foo: true}), 0)
  ✔ no-fn-reference-in-iterator › invalid: foo.reduceRight(m, [])
  ✔ no-console-spaces › valid: console.log("abc");
  ✔ no-console-spaces › valid: console.log("abc", "def");
  ✔ no-console-spaces › valid: console.log('abc', "def");
  ✔ no-console-spaces › valid: console.log(`abc`, "def");
  ✔ no-console-spaces › valid: console.log("abc", "def"); v2
  ✔ no-console-spaces › valid: console.log(`
  abc
  def
  `);
  ✔ no-console-spaces › valid: console.log(' ', "def");
  ✔ no-console-spaces › valid: console.log('  ', "def");
  ✔ no-console-spaces › valid: console.log("abc  ", "def");
  ✔ no-console-spaces › valid: console.log("abc\t", "def");
  ✔ no-console-spaces › valid: console.log("abc\n", "def");
  ✔ no-console-spaces › valid: console.log("  abc", "def");
  ✔ no-console-spaces › valid: console.log(" abc", "def");
  ✔ no-console-spaces › valid: console.log("abc", "def ");
  ✔ no-console-spaces › valid: console.log();
  ✔ no-console-spaces › valid: console.log("");
  ✔ no-console-spaces › valid: console.log(123);
  ✔ no-console-spaces › valid: console.log(null);
  ✔ no-console-spaces › valid: console.log(undefined);
  ✔ no-console-spaces › valid: console.dir("abc ");
  ✔ no-console-spaces › invalid: console.log("abc ", "def");
  ✔ no-console-spaces › invalid: console.log("abc", " def");
  ✔ no-console-spaces › invalid: console.log(" abc ", "def");
  ✔ no-console-spaces › invalid: console.debug("abc ", "def");
  ✔ no-console-spaces › invalid: console.info("abc ", "def");
  ✔ no-console-spaces › invalid: console.warn("abc ", "def");
  ✔ no-console-spaces › invalid: console.error("abc ", "def");
  ✔ no-console-spaces › invalid: console.log("abc", " def ", "ghi");
  ✔ no-console-spaces › invalid: console.log("abc ", "def ", "ghi");
  ✔ no-console-spaces › invalid: console.log('abc ', "def");
  ✔ no-console-spaces › invalid: console.log(`abc `, "def");
  ✔ no-console-spaces › invalid: console.log(`abc ${1 + 2} `, "def");
  ✔ no-console-spaces › invalid: 
  				console.log(
  					'abc',
  					'def ',
  					'ghi'
  				);
			
  ✔ no-hex-escape › valid: const foo = 'foo'
  ✔ no-hex-escape › valid: const foo = '\u00b1'
  ✔ no-hex-escape › valid: const foo = '\u00b1\u00b1'
  ✔ no-hex-escape › valid: const foo = 'foo\u00b1'
  ✔ no-hex-escape › valid: const foo = 'foo\u00b1foo'
  ✔ no-hex-escape › valid: const foo = '\u00b1foo'
  ✔ no-hex-escape › valid: const foo = '\\xb1'
  ✔ no-hex-escape › valid: const foo = '\\\\xb1'
  ✔ no-hex-escape › valid: const foo = 'foo\\xb1'
  ✔ no-hex-escape › valid: const foo = 'foo\\\\xb1'
  ✔ no-hex-escape › valid: const foo = '\\xd8\\x3d\\xdc\\xa9'
  ✔ no-hex-escape › valid: const foo = 'foo\\x12foo\\x34'
  ✔ no-hex-escape › valid: const foo = '\\\\xd8\\\\x3d\\\\xdc\\\\xa9'
  ✔ no-hex-escape › valid: const foo = 'foo\\\\x12foo\\\\x34'
  ✔ no-hex-escape › valid: const foo = 42
  ✔ no-hex-escape › valid: const foo = `foo`
  ✔ no-hex-escape › valid: const foo = `\u00b1`
  ✔ no-hex-escape › valid: const foo = `\u00b1\u00b1`
  ✔ no-hex-escape › valid: const foo = `foo\u00b1`
  ✔ no-hex-escape › valid: const foo = `foo\u00b1foo`
  ✔ no-hex-escape › valid: const foo = `\u00b1foo`
  ✔ no-hex-escape › valid: const foo = `42`
  ✔ no-hex-escape › valid: const foo = `\\xb1`
  ✔ no-hex-escape › valid: const foo = `\\\\xb1`
  ✔ no-hex-escape › valid: const foo = `foo\\xb1`
  ✔ no-hex-escape › valid: const foo = `foo\\\\xb1`
  ✔ no-hex-escape › valid: const foo = `\\xd8\\x3d\\xdc\\xa9`
  ✔ no-hex-escape › valid: const foo = `foo\\x12foo\\x34`
  ✔ no-hex-escape › valid: const foo = `\\\\xd8\\\\x3d\\\\xdc\\\\xa9`
  ✔ no-hex-escape › valid: const foo = `foo\\\\x12foo\\\\x34`
  ✔ no-hex-escape › invalid: const foo = '\xb1'
  ✔ no-hex-escape › invalid: const foo = '\\\xb1'
  ✔ no-hex-escape › invalid: const foo = '\xb1\xb1'
  ✔ no-hex-escape › invalid: const foo = '\\\xb1\\\xb1'
  ✔ no-hex-escape › invalid: const foo = '\\\xb1\\\\xb1'
  ✔ no-hex-escape › invalid: const foo = '\\\\\xb1\\\xb1'
  ✔ no-hex-escape › invalid: const foo = '\xb1foo'
  ✔ no-hex-escape › invalid: const foo = '\xd8\x3d\xdc\xa9'
  ✔ no-hex-escape › invalid: const foo = 'foo\xb1'
  ✔ no-hex-escape › invalid: const foo = 'foo\\\xb1'
  ✔ no-hex-escape › invalid: const foo = 'foo\\\\\xb1'
  ✔ no-hex-escape › invalid: const foo = 'foo\x12foo\x34'
  ✔ no-hex-escape › invalid: const foo = '42\x1242\x34'
  ✔ no-hex-escape › invalid: const foo = '42\\\x1242\\\x34'
  ✔ no-hex-escape › invalid: const foo = `\xb1`
  ✔ no-hex-escape › invalid: const foo = `\\\xb1`
  ✔ no-hex-escape › invalid: const foo = `\xb1\xb1`
  ✔ no-hex-escape › invalid: const foo = `\\\xb1\\\xb1`
  ✔ no-hex-escape › invalid: const foo = `\\\\\xb1\\\xb1`
  ✔ no-hex-escape › invalid: const foo = `\\\\\xb1\\\\xb1`
  ✔ no-hex-escape › invalid: const foo = `\xb1foo`
  ✔ no-hex-escape › invalid: const foo = `\xd8\x3d\xdc\xa9`
  ✔ no-hex-escape › invalid: const foo = `foo\xb1`
  ✔ no-hex-escape › invalid: const foo = `foo\\\xb1`
  ✔ no-hex-escape › invalid: const foo = `foo\\\\\xb1`
  ✔ no-hex-escape › invalid: const foo = `foo\x12foo\x34`
  ✔ no-hex-escape › invalid: const foo = `42\x1242\x34`
  ✔ no-hex-escape › invalid: const foo = `42\\\x1242\\\x34`
  ✔ no-array-instanceof › valid: Array.isArray(arr)
  ✔ no-array-instanceof › valid: arr instanceof Object
  ✔ no-array-instanceof › valid: arr instanceof array
  ✔ no-array-instanceof › valid: a instanceof 'array'
  ✔ no-array-instanceof › valid: a instanceof ArrayA
  ✔ no-array-instanceof › valid: a.x[2] instanceof foo()
  ✔ no-array-instanceof › valid: Array.isArray([1,2,3]) === true
  ✔ no-array-instanceof › valid: "arr instanceof Array"
  ✔ no-array-instanceof › invalid: arr instanceof Array
  ✔ no-array-instanceof › invalid: [] instanceof Array
  ✔ no-array-instanceof › invalid: [1,2,3] instanceof Array === true
  ✔ no-array-instanceof › invalid: fun.call(1, 2, 3) instanceof Array
  ✔ no-array-instanceof › invalid: obj.arr instanceof Array
  ✔ no-array-instanceof › invalid: foo.bar[2] instanceof Array
  ✔ no-abusive-eslint-disable › valid: eval();
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line no-eval
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line no-eval, no-console
  ✔ no-abusive-eslint-disable › valid: eval(); //eslint-disable-line no-eval
  ✔ no-abusive-eslint-disable › valid: eval(); //     eslint-disable-line no-eval
  ✔ no-abusive-eslint-disable › valid: eval(); //	eslint-disable-line no-eval
  ✔ no-abusive-eslint-disable › valid: eval(); /* eslint-disable-line no-eval */
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line plugin/rule
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line @scope/plugin/rule-name
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line no-eval, @scope/plugin/rule-name
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line @scope/rule-name
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-disable-line no-eval, @scope/rule-name
  ✔ no-abusive-eslint-disable › valid: eval(); // eslint-line-disable
  ✔ no-abusive-eslint-disable › valid: eval(); // some comment
  ✔ no-abusive-eslint-disable › valid: foo();
  		// eslint-disable-line no-eval
  		eval();
  ✔ no-abusive-eslint-disable › valid: /* eslint-disable no-eval */
  ✔ no-abusive-eslint-disable › valid: foo();
  		/* eslint-disable no-eval */
  		eval();
  ✔ no-abusive-eslint-disable › valid: foo();
  		/* eslint-disable-next-line no-eval */
  		eval();
  ✔ no-abusive-eslint-disable › invalid: eval(); // eslint-disable-line
  ✔ no-abusive-eslint-disable › invalid: foo();
  eval(); // eslint-disable-line
  ✔ no-abusive-eslint-disable › invalid: /* eslint-disable */
  ✔ no-abusive-eslint-disable › invalid: foo();
  /* eslint-disable */
  eval();
  ✔ no-abusive-eslint-disable › invalid: foo();
  /* eslint-disable-next-line */
  eval();
  ✔ no-abusive-eslint-disable › invalid: // eslint-disable-next-line
  eval();
  ✔ no-abusive-eslint-disable › invalid: // eslint-disable-next-line @scopewithoutplugin
  eval();
  ✔ new-for-builtins › valid: const foo = new Object()
  ✔ new-for-builtins › valid: const foo = new Array()
  ✔ new-for-builtins › valid: const foo = new ArrayBuffer()
  ✔ new-for-builtins › valid: const foo = new DataView()
  ✔ new-for-builtins › valid: const foo = new Date()
  ✔ new-for-builtins › valid: const foo = new Error()
  ✔ new-for-builtins › valid: const foo = new Float32Array()
  ✔ new-for-builtins › valid: const foo = new Float64Array()
  ✔ new-for-builtins › valid: const foo = new Function()
  ✔ new-for-builtins › valid: const foo = new Int8Array()
  ✔ new-for-builtins › valid: const foo = new Int16Array()
  ✔ new-for-builtins › valid: const foo = new Int32Array()
  ✔ new-for-builtins › valid: const foo = new Map()
  ✔ new-for-builtins › valid: const foo = new Map([['foo', 'bar'], ['unicorn', 'rainbow']])
  ✔ new-for-builtins › valid: const foo = new WeakMap()
  ✔ new-for-builtins › valid: const foo = new Set()
  ✔ new-for-builtins › valid: const foo = new WeakSet()
  ✔ new-for-builtins › valid: const foo = new Promise()
  ✔ new-for-builtins › valid: const foo = new RegExp()
  ✔ new-for-builtins › valid: const foo = new UInt8Array()
  ✔ new-for-builtins › valid: const foo = new UInt16Array()
  ✔ new-for-builtins › valid: const foo = new UInt32Array()
  ✔ new-for-builtins › valid: const foo = new Uint8ClampedArray()
  ✔ new-for-builtins › valid: const foo = Boolean()
  ✔ new-for-builtins › valid: const foo = Number()
  ✔ new-for-builtins › valid: const foo = String()
  ✔ new-for-builtins › valid: const foo = Symbol()
  ✔ new-for-builtins › invalid: const foo = Object()
  ✔ new-for-builtins › invalid: const foo = Array()
  ✔ new-for-builtins › invalid: const foo = ArrayBuffer()
  ✔ new-for-builtins › invalid: const foo = DataView()
  ✔ new-for-builtins › invalid: const foo = Date()
  ✔ new-for-builtins › invalid: const foo = Error()
  ✔ new-for-builtins › invalid: const foo = Error('Foo bar')
  ✔ new-for-builtins › invalid: const foo = Float32Array()
  ✔ new-for-builtins › invalid: const foo = Float64Array()
  ✔ new-for-builtins › invalid: const foo = Function()
  ✔ new-for-builtins › invalid: const foo = Int8Array()
  ✔ new-for-builtins › invalid: const foo = Int16Array()
  ✔ new-for-builtins › invalid: const foo = Int32Array()
  ✔ new-for-builtins › invalid: const foo = Map()
  ✔ new-for-builtins › invalid: const foo = Map([['foo', 'bar'], ['unicorn', 'rainbow']])
  ✔ new-for-builtins › invalid: const foo = WeakMap()
  ✔ new-for-builtins › invalid: const foo = Set()
  ✔ new-for-builtins › invalid: const foo = WeakSet()
  ✔ new-for-builtins › invalid: const foo = Promise()
  ✔ new-for-builtins › invalid: const foo = RegExp()
  ✔ new-for-builtins › invalid: const foo = Uint8Array()
  ✔ new-for-builtins › invalid: const foo = Uint16Array()
  ✔ new-for-builtins › invalid: const foo = Uint32Array()
  ✔ new-for-builtins › invalid: const foo = Uint8ClampedArray()
  ✔ new-for-builtins › invalid: const foo = new Boolean()
  ✔ new-for-builtins › invalid: const foo = new Number()
  ✔ new-for-builtins › invalid: const foo = new Number('123')
  ✔ new-for-builtins › invalid: const foo = new String()
  ✔ new-for-builtins › invalid: const foo = new Symbol()

  5 tests failed

  prefer-key-over-key-code › valid: foo.addEventListener('click', e => {
  			const {keyCode: a, charCode: b, charCode: c} = e;
  		});

  /Users/ankeet.maini/Code/eslint-plugin-unicorn/node_modules/eslint/lib/testers/rule-tester.js:415

  Error thrown in test:

  AssertionError [ERR_ASSERTION] (AssertionError) {
    actual: 3,
    code: 'ERR_ASSERTION',
    expected: 0,
    generatedMessage: false,
    operator: '===',
    message: `Should have no errors but had 3: [ { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of a. See https://goo.gl/cRK532 for more info.',␊
        line: 2,␊
        column: 20,␊
        nodeType: 'Identifier',␊
        endLine: 2,␊
        endColumn: 21 },␊
      { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of b. See https://goo.gl/cRK532 for more info.',␊
        line: 2,␊
        column: 33,␊
        nodeType: 'Identifier',␊
        endLine: 2,␊
        endColumn: 34 },␊
      { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of c. See https://goo.gl/cRK532 for more info.',␊
        line: 2,␊
        column: 46,␊
        nodeType: 'Identifier',␊
        endLine: 2,␊
        endColumn: 47 } ]`,
  }

  testValidTemplate (node_modules/eslint/lib/testers/rule-tester.js:415:20)
  RuleTester.it (node_modules/eslint/lib/testers/rule-tester.js:584:25)
  t (node_modules/eslint-ava-rule-tester/index.js:28:9)



  prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {keyCode, a, b} = e;
  				});
			

  /Users/ankeet.maini/Code/eslint-plugin-unicorn/node_modules/eslint/lib/testers/rule-tester.js:462

  Error thrown in test:

  AssertionError [ERR_ASSERTION] (AssertionError) {
    actual: 2,
    code: 'ERR_ASSERTION',
    expected: 1,
    generatedMessage: false,
    operator: '===',
    message: `Should have 1 error but had 2: [ { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of keyCode. See https://goo.gl/cRK532 for more info.',␊
        line: 3,␊
        column: 13,␊
        nodeType: 'Identifier',␊
        endLine: 3,␊
        endColumn: 20 },␊
      { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of keyCode. See https://goo.gl/cRK532 for more info.',␊
        line: 3,␊
        column: 13,␊
        nodeType: 'Identifier',␊
        endLine: 3,␊
        endColumn: 20 } ]`,
  }

  testInvalidTemplate (node_modules/eslint/lib/testers/rule-tester.js:462:24)
  RuleTester.it (node_modules/eslint/lib/testers/rule-tester.js:592:25)
  t (node_modules/eslint-ava-rule-tester/index.js:28:9)



  prefer-key-over-key-code › invalid: 
  				add.addEventListener('keyup', event => {
  					f.addEventList('some', e => {
  						const {keyCode} = event;
  						console.log(event.key)
  					})
  				})
			

  /Users/ankeet.maini/Code/eslint-plugin-unicorn/node_modules/eslint/lib/testers/rule-tester.js:462

  Error thrown in test:

  AssertionError [ERR_ASSERTION] (AssertionError) {
    actual: 2,
    code: 'ERR_ASSERTION',
    expected: 1,
    generatedMessage: false,
    operator: '===',
    message: `Should have 1 error but had 2: [ { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of keyCode. See https://goo.gl/cRK532 for more info.',␊
        line: 4,␊
        column: 14,␊
        nodeType: 'Identifier',␊
        endLine: 4,␊
        endColumn: 21 },␊
      { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of keyCode. See https://goo.gl/cRK532 for more info.',␊
        line: 4,␊
        column: 14,␊
        nodeType: 'Identifier',␊
        endLine: 4,␊
        endColumn: 21 } ]`,
  }

  testInvalidTemplate (node_modules/eslint/lib/testers/rule-tester.js:462:24)
  RuleTester.it (node_modules/eslint/lib/testers/rule-tester.js:592:25)
  t (node_modules/eslint-ava-rule-tester/index.js:28:9)



  prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {charCode, a, b} = e;
  				});
			

  /Users/ankeet.maini/Code/eslint-plugin-unicorn/node_modules/eslint/lib/testers/rule-tester.js:462

  Error thrown in test:

  AssertionError [ERR_ASSERTION] (AssertionError) {
    actual: 2,
    code: 'ERR_ASSERTION',
    expected: 1,
    generatedMessage: false,
    operator: '===',
    message: `Should have 1 error but had 2: [ { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of charCode. See https://goo.gl/cRK532 for more info.',␊
        line: 3,␊
        column: 13,␊
        nodeType: 'Identifier',␊
        endLine: 3,␊
        endColumn: 21 },␊
      { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of charCode. See https://goo.gl/cRK532 for more info.',␊
        line: 3,␊
        column: 13,␊
        nodeType: 'Identifier',␊
        endLine: 3,␊
        endColumn: 21 } ]`,
  }

  testInvalidTemplate (node_modules/eslint/lib/testers/rule-tester.js:462:24)
  RuleTester.it (node_modules/eslint/lib/testers/rule-tester.js:592:25)
  t (node_modules/eslint-ava-rule-tester/index.js:28:9)



  prefer-key-over-key-code › invalid: 
  				foo.addEventListener('click', e => {
  					const {which, a, b} = e;
  				});
			

  /Users/ankeet.maini/Code/eslint-plugin-unicorn/node_modules/eslint/lib/testers/rule-tester.js:462

  Error thrown in test:

  AssertionError [ERR_ASSERTION] (AssertionError) {
    actual: 2,
    code: 'ERR_ASSERTION',
    expected: 1,
    generatedMessage: false,
    operator: '===',
    message: `Should have 1 error but had 2: [ { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of which. See https://goo.gl/cRK532 for more info.',␊
        line: 3,␊
        column: 13,␊
        nodeType: 'Identifier',␊
        endLine: 3,␊
        endColumn: 18 },␊
      { ruleId: 'prefer-key-over-key-code',␊
        severity: 1,␊
        message: 'Use key instead of which. See https://goo.gl/cRK532 for more info.',␊
        line: 3,␊
        column: 13,␊
        nodeType: 'Identifier',␊
        endLine: 3,␊
        endColumn: 18 } ]`,
  }

  testInvalidTemplate (node_modules/eslint/lib/testers/rule-tester.js:462:24)
  RuleTester.it (node_modules/eslint/lib/testers/rule-tester.js:592:25)
  t (node_modules/eslint-ava-rule-tester/index.js:28:9)

---------------------------------------|----------|----------|----------|----------|-------------------|
File                                   |  % Stmts | % Branch |  % Funcs |  % Lines | Uncovered Line #s |
---------------------------------------|----------|----------|----------|----------|-------------------|
All files                              |    98.56 |    95.98 |      100 |     98.5 |                   |
 eslint-plugin-unicorn                 |      100 |      100 |      100 |      100 |                   |
  index.js                             |      100 |      100 |      100 |      100 |                   |
 eslint-plugin-unicorn/rules           |    98.55 |    95.98 |      100 |    98.48 |                   |
  catch-error-name.js                  |    96.67 |    95.74 |      100 |    96.67 |           109,110 |
  custom-error-definition.js           |    98.41 |    95.12 |      100 |    98.25 |                40 |
  error-message.js                     |      100 |      100 |      100 |      100 |                   |
  escape-case.js                       |    88.46 |    78.57 |      100 |    88.46 |          17,24,39 |
  explicit-length-check.js             |      100 |      100 |      100 |      100 |                   |
  filename-case.js                     |      100 |      100 |      100 |      100 |                   |
  import-index.js                      |      100 |      100 |      100 |      100 |                   |
  new-for-builtins.js                  |      100 |      100 |      100 |      100 |                   |
  no-abusive-eslint-disable.js         |      100 |      100 |      100 |      100 |                   |
  no-array-instanceof.js               |      100 |      100 |      100 |      100 |                   |
  no-console-spaces.js                 |      100 |    93.55 |      100 |      100 |             44,45 |
  no-fn-reference-in-iterator.js       |      100 |      100 |      100 |      100 |                   |
  no-hex-escape.js                     |      100 |       75 |      100 |      100 |                 5 |
  no-new-buffer.js                     |      100 |      100 |      100 |      100 |                   |
  no-process-exit.js                   |      100 |      100 |      100 |      100 |                   |
  no-unreadable-array-destructuring.js |    90.91 |     87.5 |      100 |    90.91 |                13 |
  no-unsafe-regex.js                   |      100 |    90.91 |      100 |      100 |                36 |
  no-unused-properties.js              |    98.04 |    94.52 |      100 |    98.02 |             50,92 |
  number-literal-case.js               |      100 |      100 |      100 |      100 |                   |
  prefer-add-event-listener.js         |    98.28 |    96.43 |      100 |    98.15 |                95 |
  prefer-exponentiation-operator.js    |      100 |      100 |      100 |      100 |                   |
  prefer-key-over-key-code.js          |    98.39 |    95.24 |      100 |    98.28 |               160 |
  prefer-node-append.js                |      100 |      100 |      100 |      100 |                   |
  prefer-node-remove.js                |    94.29 |    83.33 |      100 |    94.29 |             11,29 |
  prefer-query-selector.js             |      100 |      100 |      100 |      100 |                   |
  prefer-spread.js                     |      100 |      100 |      100 |      100 |                   |
  prefer-starts-ends-with.js           |      100 |      100 |      100 |      100 |                   |
  prefer-text-content.js               |      100 |      100 |      100 |      100 |                   |
  prefer-type-error.js                 |      100 |      100 |      100 |      100 |                   |
  regex-shorthand.js                   |    97.06 |    92.31 |      100 |    97.06 |                32 |
  throw-new-error.js                   |      100 |      100 |      100 |      100 |                   |
 eslint-plugin-unicorn/rules/utils     |      100 |      100 |      100 |      100 |                   |
  get-docs-url.js                      |      100 |      100 |      100 |      100 |                   |
---------------------------------------|----------|----------|----------|----------|-------------------|
