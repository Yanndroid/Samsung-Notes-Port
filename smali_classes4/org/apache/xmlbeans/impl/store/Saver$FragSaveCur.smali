.class final Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;
.super Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragSaveCur"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final CUR:I = 0x5

.field private static final ELEM_END:I = 0x4

.field private static final ELEM_START:I = 0x2

.field private static final ROOT_END:I = 0x3

.field private static final ROOT_START:I = 0x1


# instance fields
.field private _ancestorNamespaces:Ljava/util/ArrayList;

.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _elem:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _end:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _saveAttr:Z

.field private _state:I

.field private _stateStack:[I

.field private _stateStackSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_saveAttr:Z

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_end:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_elem:Lorg/apache/poi/javax/xml/namespace/QName;

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    const/16 p2, 0x8

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStack:[I

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->computeAncestorNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    return-void
.end method

.method private computeAncestorNamespaces(Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_ancestorNamespaces:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toParentRaw()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_ancestorNamespaces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_ancestorNamespaces:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    goto :goto_0
.end method


# virtual methods
.method public getAncestorNamespaces()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_ancestorNamespaces:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAttrValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChars()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getChars(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget v2, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_offSrc:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_offSrc:I

    iget v1, v1, Lorg/apache/xmlbeans/impl/store/Cur;->_cchSrc:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->_cchSrc:I

    return-object v0
.end method

.method public getDocProps()Lorg/apache/xmlbeans/XmlDocumentProperties;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_elem:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlnsPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlnsUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getXmlnsUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChildren()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isFinish()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->pop()V

    :cond_1
    return v1
.end method

.method public hasText()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->push()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->next()Z

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$SaveCur;->isText()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->pop()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTextCData()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isTextCData()Z

    move-result v0

    return v0
.end method

.method public isXmlns()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isXmlns()Z

    move-result v0

    return v0
.end method

.method public kind()I
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->kind()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    return v1
.end method

.method public next()Z
    .locals 5

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_8

    const/4 v4, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_end:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_elem:Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez v0, :cond_4

    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_saveAttr:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_1
    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toParent()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z

    :cond_6
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_end:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/store/Cur;->isSamePos(Lorg/apache/xmlbeans/impl/store/Cur;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_elem:Lorg/apache/poi/javax/xml/namespace/QName;

    if-nez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_9
    :goto_2
    return v2
.end method

.method public pop()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->pop()Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStack:[I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStackSize:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    return-void
.end method

.method public push()V
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStackSize:I

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStack:[I

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStack:[I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_stateStackSize:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->push()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_end:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_end:Lorg/apache/xmlbeans/impl/store/Cur;

    return-void
.end method

.method public toEnd()V
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toEnd()V

    :cond_0
    return-void

    :cond_1
    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    return-void

    :cond_2
    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    return-void
.end method

.method public toFirstAttr()Z
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->isAttr()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_state:I

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toFirstAttr()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public toNextAttr()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_saveAttr:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$FragSaveCur;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->toNextAttr()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
