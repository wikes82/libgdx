/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.10
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.badlogic.gdx.physics.bullet;

import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.Quaternion;
import com.badlogic.gdx.math.Matrix3;
import com.badlogic.gdx.math.Matrix4;

public class SoftBodyFaceData {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  protected SoftBodyFaceData(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(SoftBodyFaceData obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        gdxBulletJNI.delete_SoftBodyFaceData(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public void setM_normal(btVector3FloatData value) {
    gdxBulletJNI.SoftBodyFaceData_m_normal_set(swigCPtr, this, btVector3FloatData.getCPtr(value), value);
  }

  public btVector3FloatData getM_normal() {
    long cPtr = gdxBulletJNI.SoftBodyFaceData_m_normal_get(swigCPtr, this);
    return (cPtr == 0) ? null : new btVector3FloatData(cPtr, false);
  }

  public void setM_material(SoftBodyMaterialData value) {
    gdxBulletJNI.SoftBodyFaceData_m_material_set(swigCPtr, this, SoftBodyMaterialData.getCPtr(value), value);
  }

  public SoftBodyMaterialData getM_material() {
    long cPtr = gdxBulletJNI.SoftBodyFaceData_m_material_get(swigCPtr, this);
    return (cPtr == 0) ? null : new SoftBodyMaterialData(cPtr, false);
  }

  public void setM_nodeIndices(int[] value) {
    gdxBulletJNI.SoftBodyFaceData_m_nodeIndices_set(swigCPtr, this, value);
  }

  public int[] getM_nodeIndices() {
    return gdxBulletJNI.SoftBodyFaceData_m_nodeIndices_get(swigCPtr, this);
}

  public void setM_restArea(float value) {
    gdxBulletJNI.SoftBodyFaceData_m_restArea_set(swigCPtr, this, value);
  }

  public float getM_restArea() {
    return gdxBulletJNI.SoftBodyFaceData_m_restArea_get(swigCPtr, this);
  }

  public SoftBodyFaceData() {
    this(gdxBulletJNI.new_SoftBodyFaceData(), true);
  }

}
