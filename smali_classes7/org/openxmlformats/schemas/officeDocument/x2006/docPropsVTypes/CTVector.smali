.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctvectorc3e2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVector;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addBool(Z)V
.end method

.method public abstract addBstr(Ljava/lang/String;)V
.end method

.method public abstract addClsid(Ljava/lang/String;)V
.end method

.method public abstract addCy(Ljava/lang/String;)V
.end method

.method public abstract addDate(Ljava/util/Calendar;)V
.end method

.method public abstract addError(Ljava/lang/String;)V
.end method

.method public abstract addFiletime(Ljava/util/Calendar;)V
.end method

.method public abstract addI1(B)V
.end method

.method public abstract addI2(S)V
.end method

.method public abstract addI4(I)V
.end method

.method public abstract addI8(J)V
.end method

.method public abstract addLpstr(Ljava/lang/String;)V
.end method

.method public abstract addLpwstr(Ljava/lang/String;)V
.end method

.method public abstract addNewBool()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract addNewBstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewCf()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;
.end method

.method public abstract addNewClsid()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;
.end method

.method public abstract addNewCy()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract addNewDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract addNewError()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract addNewFiletime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract addNewI1()Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract addNewI2()Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract addNewI4()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract addNewI8()Lorg/apache/xmlbeans/XmlLong;
.end method

.method public abstract addNewLpstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewLpwstr()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addNewR4()Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract addNewR8()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract addNewUi1()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract addNewUi2()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract addNewUi4()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract addNewUi8()Lorg/apache/xmlbeans/XmlUnsignedLong;
.end method

.method public abstract addNewVariant()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract addR4(F)V
.end method

.method public abstract addR8(D)V
.end method

.method public abstract addUi1(S)V
.end method

.method public abstract addUi2(I)V
.end method

.method public abstract addUi4(J)V
.end method

.method public abstract addUi8(Ljava/math/BigInteger;)V
.end method

.method public abstract getBaseType()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;
.end method

.method public abstract getBoolArray(I)Z
.end method

.method public abstract getBoolArray()[Z
.end method

.method public abstract getBoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBstrArray(I)Ljava/lang/String;
.end method

.method public abstract getBstrArray()[Ljava/lang/String;
.end method

.method public abstract getBstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCfArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;
.end method

.method public abstract getCfArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;
.end method

.method public abstract getCfList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClsidArray(I)Ljava/lang/String;
.end method

.method public abstract getClsidArray()[Ljava/lang/String;
.end method

.method public abstract getClsidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCyArray(I)Ljava/lang/String;
.end method

.method public abstract getCyArray()[Ljava/lang/String;
.end method

.method public abstract getCyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDateArray(I)Ljava/util/Calendar;
.end method

.method public abstract getDateArray()[Ljava/util/Calendar;
.end method

.method public abstract getDateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getErrorArray(I)Ljava/lang/String;
.end method

.method public abstract getErrorArray()[Ljava/lang/String;
.end method

.method public abstract getErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFiletimeArray(I)Ljava/util/Calendar;
.end method

.method public abstract getFiletimeArray()[Ljava/util/Calendar;
.end method

.method public abstract getFiletimeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI1Array(I)B
.end method

.method public abstract getI1Array()[B
.end method

.method public abstract getI1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI2Array(I)S
.end method

.method public abstract getI2Array()[S
.end method

.method public abstract getI2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI4Array(I)I
.end method

.method public abstract getI4Array()[I
.end method

.method public abstract getI4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getI8Array(I)J
.end method

.method public abstract getI8Array()[J
.end method

.method public abstract getI8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLpstrArray(I)Ljava/lang/String;
.end method

.method public abstract getLpstrArray()[Ljava/lang/String;
.end method

.method public abstract getLpstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLpwstrArray(I)Ljava/lang/String;
.end method

.method public abstract getLpwstrArray()[Ljava/lang/String;
.end method

.method public abstract getLpwstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR4Array(I)F
.end method

.method public abstract getR4Array()[F
.end method

.method public abstract getR4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getR8Array(I)D
.end method

.method public abstract getR8Array()[D
.end method

.method public abstract getR8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()J
.end method

.method public abstract getUi1Array(I)S
.end method

.method public abstract getUi1Array()[S
.end method

.method public abstract getUi1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi2Array(I)I
.end method

.method public abstract getUi2Array()[I
.end method

.method public abstract getUi2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi4Array(I)J
.end method

.method public abstract getUi4Array()[J
.end method

.method public abstract getUi4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUi8Array(I)Ljava/math/BigInteger;
.end method

.method public abstract getUi8Array()[Ljava/math/BigInteger;
.end method

.method public abstract getUi8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVariantArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVariantArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract getVariantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertBool(IZ)V
.end method

.method public abstract insertBstr(ILjava/lang/String;)V
.end method

.method public abstract insertClsid(ILjava/lang/String;)V
.end method

.method public abstract insertCy(ILjava/lang/String;)V
.end method

.method public abstract insertDate(ILjava/util/Calendar;)V
.end method

.method public abstract insertError(ILjava/lang/String;)V
.end method

.method public abstract insertFiletime(ILjava/util/Calendar;)V
.end method

.method public abstract insertI1(IB)V
.end method

.method public abstract insertI2(IS)V
.end method

.method public abstract insertI4(II)V
.end method

.method public abstract insertI8(IJ)V
.end method

.method public abstract insertLpstr(ILjava/lang/String;)V
.end method

.method public abstract insertLpwstr(ILjava/lang/String;)V
.end method

.method public abstract insertNewBool(I)Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract insertNewBstr(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewCf(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;
.end method

.method public abstract insertNewClsid(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;
.end method

.method public abstract insertNewCy(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract insertNewDate(I)Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract insertNewError(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract insertNewFiletime(I)Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract insertNewI1(I)Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract insertNewI2(I)Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract insertNewI4(I)Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract insertNewI8(I)Lorg/apache/xmlbeans/XmlLong;
.end method

.method public abstract insertNewLpstr(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewLpwstr(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertNewR4(I)Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract insertNewR8(I)Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract insertNewUi1(I)Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract insertNewUi2(I)Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract insertNewUi4(I)Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract insertNewUi8(I)Lorg/apache/xmlbeans/XmlUnsignedLong;
.end method

.method public abstract insertNewVariant(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;
.end method

.method public abstract insertR4(IF)V
.end method

.method public abstract insertR8(ID)V
.end method

.method public abstract insertUi1(IS)V
.end method

.method public abstract insertUi2(II)V
.end method

.method public abstract insertUi4(IJ)V
.end method

.method public abstract insertUi8(ILjava/math/BigInteger;)V
.end method

.method public abstract removeBool(I)V
.end method

.method public abstract removeBstr(I)V
.end method

.method public abstract removeCf(I)V
.end method

.method public abstract removeClsid(I)V
.end method

.method public abstract removeCy(I)V
.end method

.method public abstract removeDate(I)V
.end method

.method public abstract removeError(I)V
.end method

.method public abstract removeFiletime(I)V
.end method

.method public abstract removeI1(I)V
.end method

.method public abstract removeI2(I)V
.end method

.method public abstract removeI4(I)V
.end method

.method public abstract removeI8(I)V
.end method

.method public abstract removeLpstr(I)V
.end method

.method public abstract removeLpwstr(I)V
.end method

.method public abstract removeR4(I)V
.end method

.method public abstract removeR8(I)V
.end method

.method public abstract removeUi1(I)V
.end method

.method public abstract removeUi2(I)V
.end method

.method public abstract removeUi4(I)V
.end method

.method public abstract removeUi8(I)V
.end method

.method public abstract removeVariant(I)V
.end method

.method public abstract setBaseType(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType$Enum;)V
.end method

.method public abstract setBoolArray(IZ)V
.end method

.method public abstract setBoolArray([Z)V
.end method

.method public abstract setBstrArray(ILjava/lang/String;)V
.end method

.method public abstract setBstrArray([Ljava/lang/String;)V
.end method

.method public abstract setCfArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;)V
.end method

.method public abstract setCfArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTCf;)V
.end method

.method public abstract setClsidArray(ILjava/lang/String;)V
.end method

.method public abstract setClsidArray([Ljava/lang/String;)V
.end method

.method public abstract setCyArray(ILjava/lang/String;)V
.end method

.method public abstract setCyArray([Ljava/lang/String;)V
.end method

.method public abstract setDateArray(ILjava/util/Calendar;)V
.end method

.method public abstract setDateArray([Ljava/util/Calendar;)V
.end method

.method public abstract setErrorArray(ILjava/lang/String;)V
.end method

.method public abstract setErrorArray([Ljava/lang/String;)V
.end method

.method public abstract setFiletimeArray(ILjava/util/Calendar;)V
.end method

.method public abstract setFiletimeArray([Ljava/util/Calendar;)V
.end method

.method public abstract setI1Array(IB)V
.end method

.method public abstract setI1Array([B)V
.end method

.method public abstract setI2Array(IS)V
.end method

.method public abstract setI2Array([S)V
.end method

.method public abstract setI4Array(II)V
.end method

.method public abstract setI4Array([I)V
.end method

.method public abstract setI8Array(IJ)V
.end method

.method public abstract setI8Array([J)V
.end method

.method public abstract setLpstrArray(ILjava/lang/String;)V
.end method

.method public abstract setLpstrArray([Ljava/lang/String;)V
.end method

.method public abstract setLpwstrArray(ILjava/lang/String;)V
.end method

.method public abstract setLpwstrArray([Ljava/lang/String;)V
.end method

.method public abstract setR4Array(IF)V
.end method

.method public abstract setR4Array([F)V
.end method

.method public abstract setR8Array(ID)V
.end method

.method public abstract setR8Array([D)V
.end method

.method public abstract setSize(J)V
.end method

.method public abstract setUi1Array(IS)V
.end method

.method public abstract setUi1Array([S)V
.end method

.method public abstract setUi2Array(II)V
.end method

.method public abstract setUi2Array([I)V
.end method

.method public abstract setUi4Array(IJ)V
.end method

.method public abstract setUi4Array([J)V
.end method

.method public abstract setUi8Array(ILjava/math/BigInteger;)V
.end method

.method public abstract setUi8Array([Ljava/math/BigInteger;)V
.end method

.method public abstract setVariantArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract setVariantArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/CTVariant;)V
.end method

.method public abstract sizeOfBoolArray()I
.end method

.method public abstract sizeOfBstrArray()I
.end method

.method public abstract sizeOfCfArray()I
.end method

.method public abstract sizeOfClsidArray()I
.end method

.method public abstract sizeOfCyArray()I
.end method

.method public abstract sizeOfDateArray()I
.end method

.method public abstract sizeOfErrorArray()I
.end method

.method public abstract sizeOfFiletimeArray()I
.end method

.method public abstract sizeOfI1Array()I
.end method

.method public abstract sizeOfI2Array()I
.end method

.method public abstract sizeOfI4Array()I
.end method

.method public abstract sizeOfI8Array()I
.end method

.method public abstract sizeOfLpstrArray()I
.end method

.method public abstract sizeOfLpwstrArray()I
.end method

.method public abstract sizeOfR4Array()I
.end method

.method public abstract sizeOfR8Array()I
.end method

.method public abstract sizeOfUi1Array()I
.end method

.method public abstract sizeOfUi2Array()I
.end method

.method public abstract sizeOfUi4Array()I
.end method

.method public abstract sizeOfUi8Array()I
.end method

.method public abstract sizeOfVariantArray()I
.end method

.method public abstract xgetBaseType()Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;
.end method

.method public abstract xgetBoolArray(I)Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBoolArray()[Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetBoolList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlBoolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetBstrArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBstrArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetBstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetClsidArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;
.end method

.method public abstract xgetClsidArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;
.end method

.method public abstract xgetClsidList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetCyArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetCyArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;
.end method

.method public abstract xgetCyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetDateArray(I)Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDateArray()[Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetErrorArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetErrorArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;
.end method

.method public abstract xgetErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetFiletimeArray(I)Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetFiletimeArray()[Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetFiletimeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI1Array(I)Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract xgetI1Array()[Lorg/apache/xmlbeans/XmlByte;
.end method

.method public abstract xgetI1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlByte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI2Array(I)Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract xgetI2Array()[Lorg/apache/xmlbeans/XmlShort;
.end method

.method public abstract xgetI2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlShort;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI4Array(I)Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetI4Array()[Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetI4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetI8Array(I)Lorg/apache/xmlbeans/XmlLong;
.end method

.method public abstract xgetI8Array()[Lorg/apache/xmlbeans/XmlLong;
.end method

.method public abstract xgetI8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlLong;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLpstrArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLpstrArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLpstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetLpwstrArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLpwstrArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetLpwstrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetR4Array(I)Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetR4Array()[Lorg/apache/xmlbeans/XmlFloat;
.end method

.method public abstract xgetR4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlFloat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetR8Array(I)Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetR8Array()[Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetR8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlDouble;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetSize()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUi1Array(I)Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUi1Array()[Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUi1List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedByte;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi2Array(I)Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetUi2Array()[Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetUi2List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedShort;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi4Array(I)Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUi4Array()[Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUi4List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedInt;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetUi8Array(I)Lorg/apache/xmlbeans/XmlUnsignedLong;
.end method

.method public abstract xgetUi8Array()[Lorg/apache/xmlbeans/XmlUnsignedLong;
.end method

.method public abstract xgetUi8List()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlUnsignedLong;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetBaseType(Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STVectorBaseType;)V
.end method

.method public abstract xsetBoolArray(ILorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBoolArray([Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetBstrArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetBstrArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetClsidArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;)V
.end method

.method public abstract xsetClsidArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STClsid;)V
.end method

.method public abstract xsetCyArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetCyArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STCy;)V
.end method

.method public abstract xsetDateArray(ILorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetDateArray([Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetErrorArray(ILorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetErrorArray([Lorg/openxmlformats/schemas/officeDocument/x2006/docPropsVTypes/STError;)V
.end method

.method public abstract xsetFiletimeArray(ILorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetFiletimeArray([Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetI1Array(ILorg/apache/xmlbeans/XmlByte;)V
.end method

.method public abstract xsetI1Array([Lorg/apache/xmlbeans/XmlByte;)V
.end method

.method public abstract xsetI2Array(ILorg/apache/xmlbeans/XmlShort;)V
.end method

.method public abstract xsetI2Array([Lorg/apache/xmlbeans/XmlShort;)V
.end method

.method public abstract xsetI4Array(ILorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetI4Array([Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetI8Array(ILorg/apache/xmlbeans/XmlLong;)V
.end method

.method public abstract xsetI8Array([Lorg/apache/xmlbeans/XmlLong;)V
.end method

.method public abstract xsetLpstrArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLpstrArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLpwstrArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetLpwstrArray([Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetR4Array(ILorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetR4Array([Lorg/apache/xmlbeans/XmlFloat;)V
.end method

.method public abstract xsetR8Array(ILorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetR8Array([Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetSize(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUi1Array(ILorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUi1Array([Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUi2Array(ILorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetUi2Array([Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetUi4Array(ILorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUi4Array([Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUi8Array(ILorg/apache/xmlbeans/XmlUnsignedLong;)V
.end method

.method public abstract xsetUi8Array([Lorg/apache/xmlbeans/XmlUnsignedLong;)V
.end method
