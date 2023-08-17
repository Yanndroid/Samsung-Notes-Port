.class public Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Name;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/model/ExternalLinksTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExternalName"
.end annotation


# instance fields
.field private name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

.field public final synthetic this$0:Lorg/apache/poi/xssf/model/ExternalLinksTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/model/ExternalLinksTable;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->this$0:Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefersToFormula()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->getRefersTo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSheetIndex()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->isSetSheetId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->getSheetId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->getSheetIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->this$0:Lorg/apache/poi/xssf/model/ExternalLinksTable;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/model/ExternalLinksTable;->getSheetNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not Supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFunction(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not Supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNameName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setRefersToFormula(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->setRefersTo(Ljava/lang/String;)V

    return-void
.end method

.method public setSheetIndex(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/model/ExternalLinksTable$ExternalName;->name:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->setSheetId(J)V

    return-void
.end method
