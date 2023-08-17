.class public Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native XmlUtil_checkXmlDocument(Ljava/lang/String;Z)I
.end method

.method private static native XmlUtil_getElement(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;"
        }
    .end annotation
.end method

.method private static native XmlUtil_getXmlString(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public static checkXmlDocument(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->XmlUtil_checkXmlDocument(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static checkXmlDocument(Ljava/lang/String;Z)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->XmlUtil_checkXmlDocument(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static getElement(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->XmlUtil_getElement(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getXmlString(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/common/raw/Element;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/util/XmlUtil;->XmlUtil_getXmlString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
