.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "cttextparagraphcaf2type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraph;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract addNewEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract addNewFld()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract addNewPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract addNewR()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getBrArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract getBrArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract getBrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndParaRPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;
.end method

.method public abstract getFldArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract getFldArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract getFldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;
.end method

.method public abstract getRArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getRArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBr(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;
.end method

.method public abstract insertNewFld(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;
.end method

.method public abstract insertNewR(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;
.end method

.method public abstract isSetEndParaRPr()Z
.end method

.method public abstract isSetPPr()Z
.end method

.method public abstract removeBr(I)V
.end method

.method public abstract removeFld(I)V
.end method

.method public abstract removeR(I)V
.end method

.method public abstract setBrArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V
.end method

.method public abstract setBrArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextLineBreak;)V
.end method

.method public abstract setEndParaRPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextCharacterProperties;)V
.end method

.method public abstract setFldArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V
.end method

.method public abstract setFldArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextField;)V
.end method

.method public abstract setPPr(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;)V
.end method

.method public abstract setRArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V
.end method

.method public abstract setRArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRegularTextRun;)V
.end method

.method public abstract sizeOfBrArray()I
.end method

.method public abstract sizeOfFldArray()I
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract unsetEndParaRPr()V
.end method

.method public abstract unsetPPr()V
.end method
