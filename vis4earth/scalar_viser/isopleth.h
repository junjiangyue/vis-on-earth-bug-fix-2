#ifndef VIS4EARTH_SCALAR_VISER_ISOPLETH_H
#define VIS4EARTH_SCALAR_VISER_ISOPLETH_H

#include <set>
#include <unordered_set>
#include <vector>
#include <cwchar>   // 包含wchar_t支持的头文件
#include <cstdio>   // 包含swprintf的头文件

#include <osg/CoordinateSystemNode>
#include <osg/CullFace>
#include <osg/Group>
#include <osg/LineWidth>
#include <osg/Matrix>
#include <osg/ShapeDrawable>
#include <osg/Vec3>
#include <osgText/Text>

#include <vis4earth/geographics_cmpt.h>
#include <vis4earth/osg_util.h>
#include <vis4earth/qt_osg_reflectable.h>
#include <vis4earth/volume_cmpt.h>

namespace Ui {
class IsoplethRenderer;
}

namespace VIS4Earth {

class IsoplethRenderer : public QtOSGReflectableWidget {
    Q_OBJECT

  public:
    enum class EMeshSmoothType { None, SphericalSpline, SqaureBezier };
    enum class ELineType { Solid, Dash };

    IsoplethRenderer(QWidget *parent = nullptr);

    osg::ref_ptr<osg::Group> GetGroup() const { return grp; }

  private:
    uint8_t isoval;
    bool useVolSmoothed;
    EMeshSmoothType meshSmoothType;

    Ui::IsoplethRenderer *ui;
    GeographicsComponent geoCmpt;
    VolumeComponent volCmpt;

    osg::ref_ptr<osg::Group> grp;
    osg::ref_ptr<osg::Geometry> geom;
    osg::ref_ptr<osg::Geode> geode;
    osg::ref_ptr<osg::Program> program;
    osg::ref_ptr<osg::Vec3Array> verts;
    osg::ref_ptr<osg::Vec3Array> vertSmootheds;
    osg::ref_ptr<osg::Vec2Array> uvs;

	osg::ref_ptr<osg::Uniform> relativeAlpha0, relativeAlpha1;
	osg::ref_ptr<osgText::Text> aText;

    std::vector<GLuint> vertIndices;
    std::array<std::set<std::array<GLuint, 2>>, 2> multiEdges;

    void initOSGResource();

    void marchingSquare(uint32_t volID);

    void updateGeometry(uint32_t volID);

	void initAnnotation();
};

} // namespace VIS4Earth

#endif // !VIS4EARTH_SCALAR_VISER_ISOPLETH_H
