.class public Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;
.super Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSDocFileCompat"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDocFile;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static of(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "of, isInitialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSDocFileCompat"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
