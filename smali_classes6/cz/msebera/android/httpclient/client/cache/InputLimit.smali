.class public Lcz/msebera/android/httpclient/client/cache/InputLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private reached:Z

.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->value:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached:Z

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->value:J

    return-wide v0
.end method

.method public isReached()Z
    .locals 1

    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached:Z

    return v0
.end method

.method public reached()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached:Z

    return-void
.end method
