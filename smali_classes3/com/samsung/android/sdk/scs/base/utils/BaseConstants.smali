.class public final Lcom/samsung/android/sdk/scs/base/utils/BaseConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/base/utils/BaseConstants$SERVICE_ACTION;,
        Lcom/samsung/android/sdk/scs/base/utils/BaseConstants$PACKAGE_INFO;
    }
.end annotation


# static fields
.field public static final SERVICE_CONNECT_WAIT_TIME:J

.field public static final TAG_PREFIX:Ljava/lang/String; = "ScsApi@"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/sdk/scs/base/utils/BaseConstants;->SERVICE_CONNECT_WAIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
