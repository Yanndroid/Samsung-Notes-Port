.class public final Lcom/sun/imageio/plugins/common/I18N;
.super Lcom/sun/imageio/plugins/common/I18NImpl;
.source "SourceFile"


# static fields
.field private static final resource_name:Ljava/lang/String; = "iio-plugin.properties"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/common/I18NImpl;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.sun.imageio.plugins.common.I18N"

    const-string v1, "iio-plugin.properties"

    invoke-static {v0, v1, p0}, Lcom/sun/imageio/plugins/common/I18NImpl;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
