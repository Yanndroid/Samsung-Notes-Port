.class public Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSdkCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
