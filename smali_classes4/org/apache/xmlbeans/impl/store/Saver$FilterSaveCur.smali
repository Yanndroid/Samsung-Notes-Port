.class abstract Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;
.super Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FilterSaveCur"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    return-void
.end method


# virtual methods
.method public abstract filter()Z
.end method

.method public getAncestorNamespaces()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getAncestorNamespaces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttrValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getAttrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChars()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getChars()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    return-object v0
.end method

.method public getDocProps()Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getDocProps()Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public getXmlnsPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlnsUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasChildren()Z

    move-result v0

    return v0
.end method

.method public hasText()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->hasText()Z

    move-result v0

    return v0
.end method

.method public isTextCData()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isTextCData()Z

    move-result v0

    return v0
.end method

.method public isXmlns()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isXmlns()Z

    move-result v0

    return v0
.end method

.method public kind()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->kind()I

    move-result v0

    return v0
.end method

.method public next()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->next()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->filter()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->toEnd()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->next()Z

    move-result v0

    return v0
.end method

.method public pop()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->pop()V

    return-void
.end method

.method public push()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->push()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    return-void
.end method

.method public toEnd()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toEnd()V

    return-void
.end method

.method public toFirstAttr()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toFirstAttr()Z

    move-result v0

    return v0
.end method

.method public toNextAttr()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FilterSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->toNextAttr()Z

    move-result v0

    return v0
.end method
