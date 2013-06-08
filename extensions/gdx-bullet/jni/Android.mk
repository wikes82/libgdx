LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
 
LOCAL_MODULE    := gdx-bullet
LOCAL_C_INCLUDES := src/bullet/ src/custom/ 
 
LOCAL_CFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__
LOCAL_CPPFLAGS := $(LOCAL_C_INCLUDES:%=-I%) -O2 -Wall -D__ANDROID__ -fno-strict-aliasing -fno-rtti -DBT_NO_PROFILE
LOCAL_LDLIBS := -lm
LOCAL_ARM_MODE  := arm
 
LOCAL_SRC_FILES := memcpy_wrap.c\
	src/bullet/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btDbvt.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btDispatcher.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp\
	src/bullet/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btCollisionObject.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btCollisionWorld.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btGhostObject.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btManifoldResult.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/CollisionDispatch/btUnionFind.cpp\
	src/bullet/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp\
	src/bullet/BulletCollision/CollisionShapes/btBox2dShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btBoxShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btCapsuleShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btCollisionShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btCompoundShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConcaveShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConeShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvex2dShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvexHullShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvexInternalShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvexShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btCylinderShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btEmptyShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btMultiSphereShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btOptimizedBvh.cpp\
	src/bullet/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btShapeHull.cpp\
	src/bullet/BulletCollision/CollisionShapes/btSphereShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTetrahedronShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTriangleBuffer.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTriangleCallback.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTriangleMesh.cpp\
	src/bullet/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp\
	src/bullet/BulletCollision/CollisionShapes/btUniformScalingShape.cpp\
	src/bullet/BulletCollision/Gimpact/btContactProcessing.cpp\
	src/bullet/BulletCollision/Gimpact/btGenericPoolAllocator.cpp\
	src/bullet/BulletCollision/Gimpact/btGImpactBvh.cpp\
	src/bullet/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp\
	src/bullet/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp\
	src/bullet/BulletCollision/Gimpact/btGImpactShape.cpp\
	src/bullet/BulletCollision/Gimpact/btTriangleShapeEx.cpp\
	src/bullet/BulletCollision/Gimpact/gim_box_set.cpp\
	src/bullet/BulletCollision/Gimpact/gim_contact.cpp\
	src/bullet/BulletCollision/Gimpact/gim_memory.cpp\
	src/bullet/BulletCollision/Gimpact/gim_tri_collision.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp\
	src/bullet/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp\
	src/bullet/BulletDynamics/Character/btKinematicCharacterController.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btContactConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btGearConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp\
	src/bullet/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp\
	src/bullet/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp\
	src/bullet/BulletDynamics/Dynamics/btRigidBody.cpp\
	src/bullet/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp\
	src/bullet/BulletDynamics/Dynamics/Bullet-C-API.cpp\
	src/bullet/BulletDynamics/Vehicle/btRaycastVehicle.cpp\
	src/bullet/BulletDynamics/Vehicle/btWheelInfo.cpp\
	src/bullet/BulletSoftBody/btDefaultSoftBodySolver.cpp\
	src/bullet/BulletSoftBody/btSoftBody.cpp\
	src/bullet/BulletSoftBody/btSoftBodyConcaveCollisionAlgorithm.cpp\
	src/bullet/BulletSoftBody/btSoftBodyHelpers.cpp\
	src/bullet/BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.cpp\
	src/bullet/BulletSoftBody/btSoftRigidCollisionAlgorithm.cpp\
	src/bullet/BulletSoftBody/btSoftRigidDynamicsWorld.cpp\
	src/bullet/BulletSoftBody/btSoftSoftCollisionAlgorithm.cpp\
	src/bullet/LinearMath/btAlignedAllocator.cpp\
	src/bullet/LinearMath/btConvexHull.cpp\
	src/bullet/LinearMath/btConvexHullComputer.cpp\
	src/bullet/LinearMath/btGeometryUtil.cpp\
	src/bullet/LinearMath/btPolarDecomposition.cpp\
	src/bullet/LinearMath/btQuickprof.cpp\
	src/bullet/LinearMath/btSerializer.cpp\
	src/bullet/LinearMath/btVector3.cpp\
	src/custom/gdx/vector.cpp\
	swig-src/gdxBullet_wrap.cpp
 
include $(BUILD_SHARED_LIBRARY)
