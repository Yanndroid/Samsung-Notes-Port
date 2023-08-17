.class public Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->b:J

    iput-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->d:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/notes/sync/account/otherdevice/TokenRefreshTask$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
