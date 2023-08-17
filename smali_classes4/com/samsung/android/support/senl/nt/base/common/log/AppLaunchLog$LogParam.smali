.class public Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogParam"
.end annotation


# instance fields
.field public mMsg:Ljava/lang/String;

.field public mSnapshot:Z

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mSnapshot:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mMsg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/base/common/log/AppLaunchLog$LogParam;->mSnapshot:Z

    return-void
.end method
