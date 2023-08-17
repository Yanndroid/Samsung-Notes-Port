.class public Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaProperty;


# static fields
.field public static final synthetic $assertionsDisabled:Z

.field public static synthetic class$org$apache$xmlbeans$impl$schema$SchemaPropertyImpl:Ljava/lang/Class;


# instance fields
.field private _acceptedNames:Ljava/util/Set;

.field private _containerTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _defaultText:Ljava/lang/String;

.field private _defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

.field private _extendsArray:Z

.field private _extendsOption:Z

.field private _extendsSingleton:Z

.field private _hasDefault:I

.field private _hasFixed:I

.field private _hasNillable:I

.field private _isAttribute:Z

.field private _isImmutable:Z

.field private _javaBasedOnTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

.field private _javaPropertyName:Ljava/lang/String;

.field private _javaSetterDelimiter:Lorg/apache/xmlbeans/QNameSet;

.field private _javaTypeCode:I

.field private _maxOccurs:Ljava/math/BigInteger;

.field private _minOccurs:Ljava/math/BigInteger;

.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _typeref:Lorg/apache/xmlbeans/SchemaType$Ref;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->class$org$apache$xmlbeans$impl$schema$SchemaPropertyImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.schema.SchemaPropertyImpl"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->class$org$apache$xmlbeans$impl$schema$SchemaPropertyImpl:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private mutate()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_isImmutable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public acceptedNames()[Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_acceptedNames:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public extendsJavaArray()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_extendsArray:Z

    return v0
.end method

.method public extendsJavaOption()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_extendsOption:Z

    return v0
.end method

.method public extendsJavaSingleton()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_extendsSingleton:Z

    return v0
.end method

.method public getContainerType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_containerTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_defaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Lorg/apache/xmlbeans/XmlAnySimpleType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/XmlValueRef;->get()Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaSetterDelimiter()Lorg/apache/xmlbeans/QNameSet;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_isAttribute:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/QNameSet;->EMPTY:Lorg/apache/xmlbeans/QNameSet;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaSetterDelimiter:Lorg/apache/xmlbeans/QNameSet;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->getContainerType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/SchemaTypeImpl;->assignJavaElementSetterModel()V

    :cond_1
    sget-boolean v0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaSetterDelimiter:Lorg/apache/xmlbeans/QNameSet;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaSetterDelimiter:Lorg/apache/xmlbeans/QNameSet;

    return-object v0
.end method

.method public getJavaTypeCode()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaTypeCode:I

    return v0
.end method

.method public getMaxOccurs()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_maxOccurs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinOccurs()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_minOccurs:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    return-object v0
.end method

.method public hasDefault()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_hasDefault:I

    return v0
.end method

.method public hasFixed()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_hasFixed:I

    return v0
.end method

.method public hasNillable()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_hasNillable:I

    return v0
.end method

.method public isAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_isAttribute:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public javaBasedOnType()Lorg/apache/xmlbeans/SchemaType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaBasedOnTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/SchemaType$Ref;->get()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setAcceptedNames(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_acceptedNames:Ljava/util/Set;

    return-void
.end method

.method public setAcceptedNames(Lorg/apache/xmlbeans/QNameSet;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/QNameSet;->includedQNamesInExcludedURIs()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_acceptedNames:Ljava/util/Set;

    return-void
.end method

.method public setAttribute(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_isAttribute:Z

    return-void
.end method

.method public setContainerTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_containerTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method

.method public setDefault(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_hasDefault:I

    return-void
.end method

.method public setDefaultText(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_defaultText:Ljava/lang/String;

    return-void
.end method

.method public setDefaultValue(Lorg/apache/xmlbeans/impl/schema/XmlValueRef;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_defaultValue:Lorg/apache/xmlbeans/impl/schema/XmlValueRef;

    return-void
.end method

.method public setExtendsJava(Lorg/apache/xmlbeans/SchemaType$Ref;ZZZ)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaBasedOnTypeRef:Lorg/apache/xmlbeans/SchemaType$Ref;

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_extendsSingleton:Z

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_extendsOption:Z

    iput-boolean p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_extendsArray:Z

    return-void
.end method

.method public setFixed(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_hasFixed:I

    return-void
.end method

.method public setImmutable()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_isImmutable:Z

    return-void
.end method

.method public setJavaPropertyName(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaPropertyName:Ljava/lang/String;

    return-void
.end method

.method public setJavaSetterDelimiter(Lorg/apache/xmlbeans/QNameSet;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaSetterDelimiter:Lorg/apache/xmlbeans/QNameSet;

    return-void
.end method

.method public setJavaTypeCode(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_javaTypeCode:I

    return-void
.end method

.method public setMaxOccurs(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_maxOccurs:Ljava/math/BigInteger;

    return-void
.end method

.method public setMinOccurs(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_minOccurs:Ljava/math/BigInteger;

    return-void
.end method

.method public setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public setNillable(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_hasNillable:I

    return-void
.end method

.method public setTypeRef(Lorg/apache/xmlbeans/SchemaType$Ref;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaPropertyImpl;->_typeref:Lorg/apache/xmlbeans/SchemaType$Ref;

    return-void
.end method
