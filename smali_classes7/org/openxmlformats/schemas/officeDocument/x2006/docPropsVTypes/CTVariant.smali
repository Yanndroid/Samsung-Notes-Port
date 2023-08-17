.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctvariantedcatype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewArray()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;
.end method

.method public abstract addNewCf()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;
.end method

.method public abstract addNewEmpty()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTEmpty;
.end method

.method public abstract addNewNull()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTNull;
.end method

.method public abstract addNewVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract addNewVector()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;
.end method

.method public abstract addNewVstream()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVstream;
.end method

.method public abstract getArray()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;
.end method

.method public abstract getBlob()[B
.end method

.method public abstract getBool()Z
.end method

.method public abstract getBstr()Ljava/lang/String;
.end method

.method public abstract getCf()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;
.end method

.method public abstract getClsid()Ljava/lang/String;
.end method

.method public abstract getCy()Ljava/lang/String;
.end method

.method public abstract getDate()Ljava/util/Calendar;
.end method

.method public abstract getDecimal()Ljava/math/BigDecimal;
.end method

.method public abstract getEmpty()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTEmpty;
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getFiletime()Ljava/util/Calendar;
.end method

.method public abstract getI1()B
.end method

.method public abstract getI2()S
.end method

.method public abstract getI4()I
.end method

.method public abstract getI8()J
.end method

.method public abstract getInt()I
.end method

.method public abstract getLpstr()Ljava/lang/String;
.end method

.method public abstract getLpwstr()Ljava/lang/String;
.end method

.method public abstract getNull()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTNull;
.end method

.method public abstract getOblob()[B
.end method

.method public abstract getOstorage()[B
.end method

.method public abstract getOstream()[B
.end method

.method public abstract getR4()F
.end method

.method public abstract getR8()D
.end method

.method public abstract getStorage()[B
.end method

.method public abstract getStream()[B
.end method

.method public abstract getUi1()S
.end method

.method public abstract getUi2()I
.end method

.method public abstract getUi4()J
.end method

.method public abstract getUi8()Ljava/math/BigInteger;
.end method

.method public abstract getUint()J
.end method

.method public abstract getVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVector()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;
.end method

.method public abstract getVstream()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVstream;
.end method

.method public abstract isSetArray()Z
.end method

.method public abstract isSetBlob()Z
.end method

.method public abstract isSetBool()Z
.end method

.method public abstract isSetBstr()Z
.end method

.method public abstract isSetCf()Z
.end method

.method public abstract isSetClsid()Z
.end method

.method public abstract isSetCy()Z
.end method

.method public abstract isSetDate()Z
.end method

.method public abstract isSetDecimal()Z
.end method

.method public abstract isSetEmpty()Z
.end method

.method public abstract isSetError()Z
.end method

.method public abstract isSetFiletime()Z
.end method

.method public abstract isSetI1()Z
.end method

.method public abstract isSetI2()Z
.end method

.method public abstract isSetI4()Z
.end method

.method public abstract isSetI8()Z
.end method

.method public abstract isSetInt()Z
.end method

.method public abstract isSetLpstr()Z
.end method

.method public abstract isSetLpwstr()Z
.end method

.method public abstract isSetNull()Z
.end method

.method public abstract isSetOblob()Z
.end method

.method public abstract isSetOstorage()Z
.end method

.method public abstract isSetOstream()Z
.end method

.method public abstract isSetR4()Z
.end method

.method public abstract isSetR8()Z
.end method

.method public abstract isSetStorage()Z
.end method

.method public abstract isSetStream()Z
.end method

.method public abstract isSetUi1()Z
.end method

.method public abstract isSetUi2()Z
.end method

.method public abstract isSetUi4()Z
.end method

.method public abstract isSetUi8()Z
.end method

.method public abstract isSetUint()Z
.end method

.method public abstract isSetVariant()Z
.end method

.method public abstract isSetVector()Z
.end method

.method public abstract isSetVstream()Z
.end method

.method public abstract setArray(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTArray;)V
.end method

.method public abstract setBlob([B)V
.end method

.method public abstract setBool(Z)V
.end method

.method public abstract setBstr(Ljava/lang/String;)V
.end method

.method public abstract setCf(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;)V
.end method

.method public abstract setClsid(Ljava/lang/String;)V
.end method

.method public abstract setCy(Ljava/lang/String;)V
.end method

.method public abstract setDate(Ljava/util/Calendar;)V
.end method

.method public abstract setDecimal(Ljava/math/BigDecimal;)V
.end method

.method public abstract setEmpty(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTEmpty;)V
.end method

.method public abstract setError(Ljava/lang/String;)V
.end method

.method public abstract setFiletime(Ljava/util/Calendar;)V
.end method

.method public abstract setI1(B)V
.end method

.method public abstract setI2(S)V
.end method

.method public abstract setI4(I)V
.end method

.method public abstract setI8(J)V
.end method

.method public abstract setInt(I)V
.end method

.method public abstract setLpstr(Ljava/lang/String;)V
.end method

.method public abstract setLpwstr(Ljava/lang/String;)V
.end method

.method public abstract setNull(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTNull;)V
.end method

.method public abstract setOblob([B)V
.end method

.method public abstract setOstorage([B)V
.end method

.method public abstract setOstream([B)V
.end method

.method public abstract setR4(F)V
.end method

.method public abstract setR8(D)V
.end method

.method public abstract setStorage([B)V
.end method

.method public abstract setStream([B)V
.end method

.method public abstract setUi1(S)V
.end method

.method public abstract setUi2(I)V
.end method

.method public abstract setUi4(J)V
.end method

.method public abstract setUi8(Ljava/math/BigInteger;)V
.end method

.method public abstract setUint(J)V
.end method

.method public abstract setVariant(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract setVector(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;)V
.end method

.method public abstract setVstream(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVstream;)V
.end method

.method public abstract unsetArray()V
.end method

.method public abstract unsetBlob()V
.end method

.method public abstract unsetBool()V
.end method

.method public abstract unsetBstr()V
.end method

.method public abstract unsetCf()V
.end method

.method public abstract unsetClsid()V
.end method

.method public abstract unsetCy()V
.end method

.method public abstract unsetDate()V
.end method

.method public abstract unsetDecimal()V
.end method

.method public abstract unsetEmpty()V
.end method

.method public abstract unsetError()V
.end method

.method public abstract unsetFiletime()V
.end method

.method public abstract unsetI1()V
.end method

.method public abstract unsetI2()V
.end method

.method public abstract unsetI4()V
.end method

.method public abstract unsetI8()V
.end method

.method public abstract unsetInt()V
.end method

.method public abstract unsetLpstr()V
.end method

.method public abstract unsetLpwstr()V
.end method

.method public abstract unsetNull()V
.end method

.method public abstract unsetOblob()V
.end method

.method public abstract unsetOstorage()V
.end method

.method public abstract unsetOstream()V
.end method

.method public abstract unsetR4()V
.end method

.method public abstract unsetR8()V
.end method

.method public abstract unsetStorage()V
.end method

.method public abstract unsetStream()V
.end method

.method public abstract unsetUi1()V
.end method

.method public abstract unsetUi2()V
.end method

.method public abstract unsetUi4()V
.end method

.method public abstract unsetUi8()V
.end method

.method public abstract unsetUint()V
.end method

.method public abstract unsetVariant()V
.end method

.method public abstract unsetVector()V
.end method

.method public abstract unsetVstream()V
.end method

.method public abstract xgetBlob()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetBool()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetClsid()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;
.end method

.method public abstract xgetCy()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDecimal()Lorg/apache/xmlbeans/XmlDecimal;
.end method

.method public abstract xgetError()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetFiletime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetI1()Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract xgetI2()Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract xgetI4()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetI8()Lorg/apache/xmlbeans/XmlLong;
.end method

.method public abstract xgetInt()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetLpstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLpwstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOblob()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetOstorage()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetOstream()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetR4()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetR8()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetStorage()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetStream()Lorg/apache/xmlbeans/XmlBase64Binary;
.end method

.method public abstract xgetUi1()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUi2()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetUi4()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUi8()Lorg/apache/xmlbeans/XmlUnsignedLong;
.end method

.method public abstract xgetUint()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetBlob(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetBool(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBstr(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetClsid(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;)V
.end method

.method public abstract xsetCy(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetDecimal(Lorg/apache/xmlbeans/XmlDecimal;)V
.end method

.method public abstract xsetError(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetFiletime(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetI1(Lorg/apache/xmlbeans/XmlByte;)V
.end method

.method public abstract xsetI2(Lorg/apache/xmlbeans/XmlShort;)V
.end method

.method public abstract xsetI4(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetI8(Lorg/apache/xmlbeans/XmlLong;)V
.end method

.method public abstract xsetInt(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetLpstr(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLpwstr(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOblob(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetOstorage(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetOstream(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetR4(Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetR8(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetStorage(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetStream(Lorg/apache/xmlbeans/XmlBase64Binary;)V
.end method

.method public abstract xsetUi1(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUi2(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetUi4(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUi8(Lorg/apache/xmlbeans/XmlUnsignedLong;)V
.end method

.method public abstract xsetUint(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
