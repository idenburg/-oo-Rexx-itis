/* ---------------------------------------------------------------- */
/* Number class, a subclass of the String class                     */
/* Values can be any valid number.                                  */
/*                                                                  */
/* All arithmetic methods need to be defined here, because          */
/* the result of the operation should be another object of          */
/* the Number class, and the result of the String class operators   */
/* always is a String class object.                                 */
/*                                                                  */
/* Note that subclasses of the Number class will yield results      */
/* that belong to that particular receiver subclass.                */
/*                                                                  */
/* ---------------------------------------------------------------- */
/*                                                                  */
/* Originally by Ruurd J. Idenburg                                  */
/*                                                                  */
/* No copyright, no licence, no guarantees or warrantees, be it     */
/* explicit, implicit or whatever. Usage is totally and completely  */
/* at the users own risk, the author shall not be liable for any    */
/* damages whatsoever, for any reason whatsoever.                   */
/*                                                                  */
/* Please keep this comment block intact when modifying this code   */
/* and add a note with date and a description.                      */
/*                                                                  */
/* ---------------------------------------------------------------- */
/* 2020/03/05 - Initial version approximately                       */
/* ---------------------------------------------------------------- */
::class number public subclass string

::method init
	self~init:super
	if (self)~datatype\='NUM' then do	--if self is not a number
		raise syntax 93.904 array(1,self) -- then raise an error and quit	
	end

::method '+' 
--use strict arg num
--return self~class~new(self~'+':super(num))
-- or:
	forward class(super) continue
	return self~class~new(result)
	
::method '-' 
	use strict arg num
	return self~class~new(self~'-':super(num))

::method '*' 
	use strict arg num
	return self~class~new(self~'*':super(num))

::method '/' 
	use strict arg num
	return self~class~new(self~'/':super(num))

::method '%' 
	use strict arg num
	return self~class~new(self~'%':super(num))

::method '//' 
	use strict arg num
	return self~class~new(self~'//':super(num))

::method '**' 
	use strict arg num
	return self~class~new(self~'**':super(num))


