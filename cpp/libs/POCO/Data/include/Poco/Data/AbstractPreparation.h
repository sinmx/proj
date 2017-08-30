//
// AbstractPreparation.h
//
// $Id: //poco/Main/Data/include/Poco/Data/AbstractPreparation.h#4 $
//
// Library: Data
// Package: DataCore
// Module:  AbstractPreparation
//
// Definition of the AbstractPreparation class.
//
// Copyright (c) 2006, Applied Informatics Software Engineering GmbH.
// and Contributors.
//
// Permission is hereby granted, free of charge, to any person or organization
// obtaining a copy of the software and accompanying documentation covered by
// this license (the "Software") to use, reproduce, display, distribute,
// execute, and transmit the Software, and to prepare derivative works of the
// Software, and to permit third-parties to whom the Software is furnished to
// do so, all subject to the following:
// 
// The copyright notices in the Software and this entire statement, including
// the above license grant, this restriction and the following disclaimer,
// must be included in all copies of the Software, in whole or in part, and
// all derivative works of the Software, unless such copies or derivative
// works are solely in the form of machine-executable object code generated by
// a source language processor.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
// SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
// FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//


#ifndef Data_AbstractPreparation_INCLUDED
#define Data_AbstractPreparation_INCLUDED


#include "Poco/Data/Data.h"
#include "Poco/Data/AbstractPreparator.h"
#include "Poco/SharedPtr.h"
#include <cstddef>


namespace Poco {
namespace Data {


class Data_API AbstractPreparation
	/// Interface for calling the appropriate AbstractPreparator method
{
public:
	typedef SharedPtr<AbstractPreparation> Ptr;
	typedef AbstractPreparator::Ptr PreparatorPtr;

	AbstractPreparation(PreparatorPtr pPreparator);
		/// Creates the AbstractPreparation.

	virtual ~AbstractPreparation();
		/// Destroys the AbstractPreparation.

	virtual void prepare() = 0;
		/// Preparations data.

protected:
	AbstractPreparation();
	AbstractPreparation(const AbstractPreparation&);
	AbstractPreparation& operator = (const AbstractPreparation&);

	PreparatorPtr preparation();
		/// Returns the preparation object

	PreparatorPtr _pPreparator;
};


//
// inlines
//
inline AbstractPreparation::PreparatorPtr AbstractPreparation::preparation()
{
	return _pPreparator;
}


} } // namespace Poco::Data


#endif // Data_AbstractPreparation_INCLUDED