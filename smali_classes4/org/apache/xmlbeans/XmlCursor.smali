.class public interface abstract Lorg/apache/xmlbeans/XmlCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlTokenSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/XmlCursor$XmlMark;,
        Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;,
        Lorg/apache/xmlbeans/XmlCursor$ChangeStamp;,
        Lorg/apache/xmlbeans/XmlCursor$TokenType;
    }
.end annotation


# virtual methods
.method public abstract addToSelection()V
.end method

.method public abstract beginElement(Ljava/lang/String;)V
.end method

.method public abstract beginElement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract beginElement(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract clearBookmark(Ljava/lang/Object;)V
.end method

.method public abstract clearSelections()V
.end method

.method public abstract comparePosition(Lorg/apache/xmlbeans/XmlCursor;)I
.end method

.method public abstract copyChars(ILorg/apache/xmlbeans/XmlCursor;)I
.end method

.method public abstract copyXml(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract copyXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;
.end method

.method public abstract dispose()V
.end method

.method public abstract execQuery(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlCursor;
.end method

.method public abstract execQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
.end method

.method public abstract getAllBookmarkRefs(Ljava/util/Collection;)V
.end method

.method public abstract getAllNamespaces(Ljava/util/Map;)V
.end method

.method public abstract getAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
.end method

.method public abstract getBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
.end method

.method public abstract getChars([CII)I
.end method

.method public abstract getChars()Ljava/lang/String;
.end method

.method public abstract getDocChangeStamp()Lorg/apache/xmlbeans/XmlCursor$ChangeStamp;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getObject()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getSelectionCount()I
.end method

.method public abstract getTextValue([CII)I
.end method

.method public abstract getTextValue()Ljava/lang/String;
.end method

.method public abstract hasNextSelection()Z
.end method

.method public abstract hasNextToken()Z
.end method

.method public abstract hasPrevToken()Z
.end method

.method public abstract insertAttribute(Ljava/lang/String;)V
.end method

.method public abstract insertAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertAttributeWithValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertAttributeWithValue(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V
.end method

.method public abstract insertChars(Ljava/lang/String;)V
.end method

.method public abstract insertComment(Ljava/lang/String;)V
.end method

.method public abstract insertElement(Ljava/lang/String;)V
.end method

.method public abstract insertElement(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertElement(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract insertElementWithText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertElementWithText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertElementWithText(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V
.end method

.method public abstract insertNamespace(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insertProcInst(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isAnyAttr()Z
.end method

.method public abstract isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract isAttr()Z
.end method

.method public abstract isComment()Z
.end method

.method public abstract isContainer()Z
.end method

.method public abstract isEnd()Z
.end method

.method public abstract isEnddoc()Z
.end method

.method public abstract isFinish()Z
.end method

.method public abstract isInSameDocument(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract isLeftOf(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract isNamespace()Z
.end method

.method public abstract isProcinst()Z
.end method

.method public abstract isRightOf(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract isStart()Z
.end method

.method public abstract isStartdoc()Z
.end method

.method public abstract isText()Z
.end method

.method public abstract moveChars(ILorg/apache/xmlbeans/XmlCursor;)I
.end method

.method public abstract moveXml(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract moveXmlContents(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract pop()Z
.end method

.method public abstract prefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract prevTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;
.end method

.method public abstract push()V
.end method

.method public abstract removeAttribute(Lorg/apache/poi/javax/xml/namespace/QName;)Z
.end method

.method public abstract removeChars(I)I
.end method

.method public abstract removeXml()Z
.end method

.method public abstract removeXmlContents()Z
.end method

.method public abstract selectPath(Ljava/lang/String;)V
.end method

.method public abstract selectPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)V
.end method

.method public abstract setAttributeText(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)Z
.end method

.method public abstract setBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)V
.end method

.method public abstract setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract setTextValue(Ljava/lang/String;)V
.end method

.method public abstract setTextValue([CII)V
.end method

.method public abstract toBookmark(Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;)Z
.end method

.method public abstract toChild(I)Z
.end method

.method public abstract toChild(Ljava/lang/String;)Z
.end method

.method public abstract toChild(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract toChild(Lorg/apache/poi/javax/xml/namespace/QName;)Z
.end method

.method public abstract toChild(Lorg/apache/poi/javax/xml/namespace/QName;I)Z
.end method

.method public abstract toCursor(Lorg/apache/xmlbeans/XmlCursor;)Z
.end method

.method public abstract toEndDoc()V
.end method

.method public abstract toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
.end method

.method public abstract toFirstAttribute()Z
.end method

.method public abstract toFirstChild()Z
.end method

.method public abstract toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
.end method

.method public abstract toLastAttribute()Z
.end method

.method public abstract toLastChild()Z
.end method

.method public abstract toNextAttribute()Z
.end method

.method public abstract toNextBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
.end method

.method public abstract toNextChar(I)I
.end method

.method public abstract toNextSelection()Z
.end method

.method public abstract toNextSibling()Z
.end method

.method public abstract toNextSibling(Ljava/lang/String;)Z
.end method

.method public abstract toNextSibling(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract toNextSibling(Lorg/apache/poi/javax/xml/namespace/QName;)Z
.end method

.method public abstract toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
.end method

.method public abstract toParent()Z
.end method

.method public abstract toPrevAttribute()Z
.end method

.method public abstract toPrevBookmark(Ljava/lang/Object;)Lorg/apache/xmlbeans/XmlCursor$XmlBookmark;
.end method

.method public abstract toPrevChar(I)I
.end method

.method public abstract toPrevSibling()Z
.end method

.method public abstract toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;
.end method

.method public abstract toSelection(I)Z
.end method

.method public abstract toStartDoc()V
.end method
