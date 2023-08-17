.class Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat$AppAppTaskCompatPureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat$AppTaskCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppAppTaskCompatPureImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/os/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat$AppAppTaskCompatPureImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 0

    iget p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    return p1
.end method
