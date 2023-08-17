.class public Lorg/apache/xmlbeans/BindingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_INTERFACE_EXT_ARRAY:[Lorg/apache/xmlbeans/InterfaceExtension;

.field private static final EMPTY_PREPOST_EXT_ARRAY:[Lorg/apache/xmlbeans/PrePostExtension;

.field private static final EMPTY_USER_TYPE_ARRY:[Lorg/apache/xmlbeans/UserType;

.field public static final QNAME_ACCESSOR_ATTRIBUTE:I = 0x4

.field public static final QNAME_ACCESSOR_ELEMENT:I = 0x3

.field public static final QNAME_DOCUMENT_TYPE:I = 0x2

.field public static final QNAME_TYPE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/xmlbeans/InterfaceExtension;

    sput-object v1, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_INTERFACE_EXT_ARRAY:[Lorg/apache/xmlbeans/InterfaceExtension;

    new-array v1, v0, [Lorg/apache/xmlbeans/PrePostExtension;

    sput-object v1, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_PREPOST_EXT_ARRAY:[Lorg/apache/xmlbeans/PrePostExtension;

    new-array v0, v0, [Lorg/apache/xmlbeans/UserType;

    sput-object v0, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_USER_TYPE_ARRY:[Lorg/apache/xmlbeans/UserType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceExtensions()[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_INTERFACE_EXT_ARRAY:[Lorg/apache/xmlbeans/InterfaceExtension;

    return-object v0
.end method

.method public getInterfaceExtensions(Ljava/lang/String;)[Lorg/apache/xmlbeans/InterfaceExtension;
    .locals 0

    sget-object p1, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_INTERFACE_EXT_ARRAY:[Lorg/apache/xmlbeans/InterfaceExtension;

    return-object p1
.end method

.method public getPrePostExtension(Ljava/lang/String;)Lorg/apache/xmlbeans/PrePostExtension;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrePostExtensions()[Lorg/apache/xmlbeans/PrePostExtension;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_PREPOST_EXT_ARRAY:[Lorg/apache/xmlbeans/PrePostExtension;

    return-object v0
.end method

.method public getUserTypes()[Lorg/apache/xmlbeans/UserType;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/BindingConfig;->EMPTY_USER_TYPE_ARRY:[Lorg/apache/xmlbeans/UserType;

    return-object v0
.end method

.method public lookupJavanameForQName(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupJavanameForQName(Lorg/apache/poi/javax/xml/namespace/QName;I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupPackageForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupPrefixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupSuffixForNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupUserTypeForQName(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/UserType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
