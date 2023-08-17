.class public Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSdkClassFactory"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public asSpenSDocFile()Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/sdk/SpenSdkClassFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;->of(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/base/common/sdk/wrapper/SpenSDocFileCompat;

    move-result-object v0

    return-object v0
.end method
