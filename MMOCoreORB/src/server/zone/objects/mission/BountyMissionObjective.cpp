/*
 *	server/zone/objects/mission/BountyMissionObjective.cpp generated by engine3 IDL compiler 0.60
 */

#include "BountyMissionObjective.h"

#include "server/zone/objects/mission/MissionObject.h"

#include "server/zone/objects/mission/MissionObserver.h"

#include "server/zone/objects/scene/SceneObject.h"

#include "server/zone/templates/SharedObjectTemplate.h"

/*
 *	BountyMissionObjectiveStub
 */

enum {RPC_FINALIZE__ = 6,RPC_INITIALIZETRANSIENTMEMBERS__,RPC_ACTIVATE__,RPC_ABORT__,RPC_COMPLETE__,RPC_SPAWNTARGET__STRING_,RPC_NOTIFYOBSERVEREVENT__MISSIONOBSERVER_INT_OBSERVABLE_MANAGEDOBJECT_LONG_,RPC_UPDATEMISSIONSTATUS__INT_,RPC_GETOBJECTIVESTATUS__};

BountyMissionObjective::BountyMissionObjective(MissionObject* mission) : MissionObjective(DummyConstructorParameter::instance()) {
	BountyMissionObjectiveImplementation* _implementation = new BountyMissionObjectiveImplementation(mission);
	_impl = _implementation;
	_impl->_setStub(this);
}

BountyMissionObjective::BountyMissionObjective(DummyConstructorParameter* param) : MissionObjective(param) {
}

BountyMissionObjective::~BountyMissionObjective() {
}



void BountyMissionObjective::initializeTransientMembers() {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_INITIALIZETRANSIENTMEMBERS__);

		method.executeWithVoidReturn();
	} else
		_implementation->initializeTransientMembers();
}

void BountyMissionObjective::activate() {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_ACTIVATE__);

		method.executeWithVoidReturn();
	} else
		_implementation->activate();
}

void BountyMissionObjective::abort() {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_ABORT__);

		method.executeWithVoidReturn();
	} else
		_implementation->abort();
}

void BountyMissionObjective::complete() {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_COMPLETE__);

		method.executeWithVoidReturn();
	} else
		_implementation->complete();
}

void BountyMissionObjective::spawnTarget(const String& zoneName) {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_SPAWNTARGET__STRING_);
		method.addAsciiParameter(zoneName);

		method.executeWithVoidReturn();
	} else
		_implementation->spawnTarget(zoneName);
}

int BountyMissionObjective::notifyObserverEvent(MissionObserver* observer, unsigned int eventType, Observable* observable, ManagedObject* arg1, long long arg2) {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_NOTIFYOBSERVEREVENT__MISSIONOBSERVER_INT_OBSERVABLE_MANAGEDOBJECT_LONG_);
		method.addObjectParameter(observer);
		method.addUnsignedIntParameter(eventType);
		method.addObjectParameter(observable);
		method.addObjectParameter(arg1);
		method.addSignedLongParameter(arg2);

		return method.executeWithSignedIntReturn();
	} else
		return _implementation->notifyObserverEvent(observer, eventType, observable, arg1, arg2);
}

void BountyMissionObjective::setNpcTemplateToSpawn(SharedObjectTemplate* sp) {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		throw ObjectNotLocalException(this);

	} else
		_implementation->setNpcTemplateToSpawn(sp);
}

void BountyMissionObjective::updateMissionStatus(int informantLevel) {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_UPDATEMISSIONSTATUS__INT_);
		method.addSignedIntParameter(informantLevel);

		method.executeWithVoidReturn();
	} else
		_implementation->updateMissionStatus(informantLevel);
}

int BountyMissionObjective::getObjectiveStatus() {
	BountyMissionObjectiveImplementation* _implementation = static_cast<BountyMissionObjectiveImplementation*>(_getImplementation());
	if (_implementation == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, RPC_GETOBJECTIVESTATUS__);

		return method.executeWithSignedIntReturn();
	} else
		return _implementation->getObjectiveStatus();
}

DistributedObjectServant* BountyMissionObjective::_getImplementation() {

	_updated = true;
	return _impl;
}

void BountyMissionObjective::_setImplementation(DistributedObjectServant* servant) {
	_impl = servant;
}

/*
 *	BountyMissionObjectiveImplementation
 */

BountyMissionObjectiveImplementation::BountyMissionObjectiveImplementation(DummyConstructorParameter* param) : MissionObjectiveImplementation(param) {
	_initializeImplementation();
}


BountyMissionObjectiveImplementation::~BountyMissionObjectiveImplementation() {
	BountyMissionObjectiveImplementation::finalize();
}


void BountyMissionObjectiveImplementation::_initializeImplementation() {
	_setClassHelper(BountyMissionObjectiveHelper::instance());

	_this = NULL;

	_serializationHelperMethod();
}

void BountyMissionObjectiveImplementation::_setStub(DistributedObjectStub* stub) {
	_this = static_cast<BountyMissionObjective*>(stub);
	MissionObjectiveImplementation::_setStub(stub);
}

DistributedObjectStub* BountyMissionObjectiveImplementation::_getStub() {
	return _this;
}

BountyMissionObjectiveImplementation::operator const BountyMissionObjective*() {
	return _this;
}

void BountyMissionObjectiveImplementation::lock(bool doLock) {
	_this->lock(doLock);
}

void BountyMissionObjectiveImplementation::lock(ManagedObject* obj) {
	_this->lock(obj);
}

void BountyMissionObjectiveImplementation::rlock(bool doLock) {
	_this->rlock(doLock);
}

void BountyMissionObjectiveImplementation::wlock(bool doLock) {
	_this->wlock(doLock);
}

void BountyMissionObjectiveImplementation::wlock(ManagedObject* obj) {
	_this->wlock(obj);
}

void BountyMissionObjectiveImplementation::unlock(bool doLock) {
	_this->unlock(doLock);
}

void BountyMissionObjectiveImplementation::runlock(bool doLock) {
	_this->runlock(doLock);
}

void BountyMissionObjectiveImplementation::_serializationHelperMethod() {
	MissionObjectiveImplementation::_serializationHelperMethod();

	_setClassName("BountyMissionObjective");

}

void BountyMissionObjectiveImplementation::readObject(ObjectInputStream* stream) {
	uint16 _varCount = stream->readShort();
	for (int i = 0; i < _varCount; ++i) {
		String _name;
		_name.parseFromBinaryStream(stream);

		uint16 _varSize = stream->readShort();

		int _currentOffset = stream->getOffset();

		if(BountyMissionObjectiveImplementation::readObjectMember(stream, _name)) {
		}

		stream->setOffset(_currentOffset + _varSize);
	}

	initializeTransientMembers();
}

bool BountyMissionObjectiveImplementation::readObjectMember(ObjectInputStream* stream, const String& _name) {
	if (MissionObjectiveImplementation::readObjectMember(stream, _name))
		return true;

	if (_name == "npcTemplateToSpawn") {
		TypeInfo<TemplateReference<SharedObjectTemplate*> >::parseFromBinaryStream(&npcTemplateToSpawn, stream);
		return true;
	}

	if (_name == "npcTarget") {
		TypeInfo<ManagedReference<AiAgent* > >::parseFromBinaryStream(&npcTarget, stream);
		return true;
	}

	if (_name == "objectiveStatus") {
		TypeInfo<int >::parseFromBinaryStream(&objectiveStatus, stream);
		return true;
	}


	return false;
}

void BountyMissionObjectiveImplementation::writeObject(ObjectOutputStream* stream) {
	int _currentOffset = stream->getOffset();
	stream->writeShort(0);
	int _varCount = BountyMissionObjectiveImplementation::writeObjectMembers(stream);
	stream->writeShort(_currentOffset, _varCount);
}

int BountyMissionObjectiveImplementation::writeObjectMembers(ObjectOutputStream* stream) {
	String _name;
	int _offset;
	uint16 _totalSize;
	_name = "npcTemplateToSpawn";
	_name.toBinaryStream(stream);
	_offset = stream->getOffset();
	stream->writeShort(0);
	TypeInfo<TemplateReference<SharedObjectTemplate*> >::toBinaryStream(&npcTemplateToSpawn, stream);
	_totalSize = (uint16) (stream->getOffset() - (_offset + 2));
	stream->writeShort(_offset, _totalSize);

	_name = "npcTarget";
	_name.toBinaryStream(stream);
	_offset = stream->getOffset();
	stream->writeShort(0);
	TypeInfo<ManagedReference<AiAgent* > >::toBinaryStream(&npcTarget, stream);
	_totalSize = (uint16) (stream->getOffset() - (_offset + 2));
	stream->writeShort(_offset, _totalSize);

	_name = "objectiveStatus";
	_name.toBinaryStream(stream);
	_offset = stream->getOffset();
	stream->writeShort(0);
	TypeInfo<int >::toBinaryStream(&objectiveStatus, stream);
	_totalSize = (uint16) (stream->getOffset() - (_offset + 2));
	stream->writeShort(_offset, _totalSize);


	return 3 + MissionObjectiveImplementation::writeObjectMembers(stream);
}

BountyMissionObjectiveImplementation::BountyMissionObjectiveImplementation(MissionObject* mission) : MissionObjectiveImplementation(mission) {
	_initializeImplementation();
	// server/zone/objects/mission/BountyMissionObjective.idl():  		objectiveStatus = INITSTATUS;
	objectiveStatus = INITSTATUS;
	// server/zone/objects/mission/BountyMissionObjective.idl():  		Logger.setLoggingName("BountyMissionObjective");
	Logger::setLoggingName("BountyMissionObjective");
}

void BountyMissionObjectiveImplementation::finalize() {
}

void BountyMissionObjectiveImplementation::initializeTransientMembers() {
	// server/zone/objects/mission/BountyMissionObjective.idl():  		super.initializeTransientMembers();
	MissionObjectiveImplementation::initializeTransientMembers();
	// server/zone/objects/mission/BountyMissionObjective.idl():  		Logger.setLoggingName("MissionObject");
	Logger::setLoggingName("MissionObject");
}

int BountyMissionObjectiveImplementation::getObjectiveStatus() {
	// server/zone/objects/mission/BountyMissionObjective.idl():  		return objectiveStatus;
	return objectiveStatus;
}

/*
 *	BountyMissionObjectiveAdapter
 */

BountyMissionObjectiveAdapter::BountyMissionObjectiveAdapter(BountyMissionObjective* obj) : MissionObjectiveAdapter(obj) {
}

Packet* BountyMissionObjectiveAdapter::invokeMethod(uint32 methid, DistributedMethod* inv) {
	Packet* resp = new MethodReturnMessage(0);

	switch (methid) {
	case RPC_FINALIZE__:
		finalize();
		break;
	case RPC_INITIALIZETRANSIENTMEMBERS__:
		initializeTransientMembers();
		break;
	case RPC_ACTIVATE__:
		activate();
		break;
	case RPC_ABORT__:
		abort();
		break;
	case RPC_COMPLETE__:
		complete();
		break;
	case RPC_SPAWNTARGET__STRING_:
		spawnTarget(inv->getAsciiParameter(_param0_spawnTarget__String_));
		break;
	case RPC_NOTIFYOBSERVEREVENT__MISSIONOBSERVER_INT_OBSERVABLE_MANAGEDOBJECT_LONG_:
		resp->insertSignedInt(notifyObserverEvent(static_cast<MissionObserver*>(inv->getObjectParameter()), inv->getUnsignedIntParameter(), static_cast<Observable*>(inv->getObjectParameter()), static_cast<ManagedObject*>(inv->getObjectParameter()), inv->getSignedLongParameter()));
		break;
	case RPC_UPDATEMISSIONSTATUS__INT_:
		updateMissionStatus(inv->getSignedIntParameter());
		break;
	case RPC_GETOBJECTIVESTATUS__:
		resp->insertSignedInt(getObjectiveStatus());
		break;
	default:
		return NULL;
	}

	return resp;
}

void BountyMissionObjectiveAdapter::finalize() {
	(static_cast<BountyMissionObjective*>(stub))->finalize();
}

void BountyMissionObjectiveAdapter::initializeTransientMembers() {
	(static_cast<BountyMissionObjective*>(stub))->initializeTransientMembers();
}

void BountyMissionObjectiveAdapter::activate() {
	(static_cast<BountyMissionObjective*>(stub))->activate();
}

void BountyMissionObjectiveAdapter::abort() {
	(static_cast<BountyMissionObjective*>(stub))->abort();
}

void BountyMissionObjectiveAdapter::complete() {
	(static_cast<BountyMissionObjective*>(stub))->complete();
}

void BountyMissionObjectiveAdapter::spawnTarget(const String& zoneName) {
	(static_cast<BountyMissionObjective*>(stub))->spawnTarget(zoneName);
}

int BountyMissionObjectiveAdapter::notifyObserverEvent(MissionObserver* observer, unsigned int eventType, Observable* observable, ManagedObject* arg1, long long arg2) {
	return (static_cast<BountyMissionObjective*>(stub))->notifyObserverEvent(observer, eventType, observable, arg1, arg2);
}

void BountyMissionObjectiveAdapter::updateMissionStatus(int informantLevel) {
	(static_cast<BountyMissionObjective*>(stub))->updateMissionStatus(informantLevel);
}

int BountyMissionObjectiveAdapter::getObjectiveStatus() {
	return (static_cast<BountyMissionObjective*>(stub))->getObjectiveStatus();
}

/*
 *	BountyMissionObjectiveHelper
 */

BountyMissionObjectiveHelper* BountyMissionObjectiveHelper::staticInitializer = BountyMissionObjectiveHelper::instance();

BountyMissionObjectiveHelper::BountyMissionObjectiveHelper() {
	className = "BountyMissionObjective";

	Core::getObjectBroker()->registerClass(className, this);
}

void BountyMissionObjectiveHelper::finalizeHelper() {
	BountyMissionObjectiveHelper::finalize();
}

DistributedObject* BountyMissionObjectiveHelper::instantiateObject() {
	return new BountyMissionObjective(DummyConstructorParameter::instance());
}

DistributedObjectServant* BountyMissionObjectiveHelper::instantiateServant() {
	return new BountyMissionObjectiveImplementation(DummyConstructorParameter::instance());
}

DistributedObjectAdapter* BountyMissionObjectiveHelper::createAdapter(DistributedObjectStub* obj) {
	DistributedObjectAdapter* adapter = new BountyMissionObjectiveAdapter(static_cast<BountyMissionObjective*>(obj));

	obj->_setClassName(className);
	obj->_setClassHelper(this);

	adapter->setStub(obj);

	return adapter;
}

