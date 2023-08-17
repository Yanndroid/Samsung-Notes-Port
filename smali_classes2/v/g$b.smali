.class public Lv/g$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/g$b;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv/g$b;->d:J

    iput-wide v0, p0, Lv/g$b;->e:J

    iput-wide v0, p0, Lv/g$b;->f:J

    iput-object p1, p0, Lv/g$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v0, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lv/g$b;->d:J

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "createdAt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lv/g$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getCreatedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lv/g$b;->d:J

    :cond_2
    iget-wide v0, p0, Lv/g$b;->d:J

    return-wide v0
.end method

.method public b()J
    .locals 4

    iget-object v0, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lv/g$b;->f:J

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DoclastModifiedAt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lv/g$b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-wide v0, p0, Lv/g$b;->e:J

    iput-wide v0, p0, Lv/g$b;->f:J

    :cond_2
    iget-wide v0, p0, Lv/g$b;->f:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lv/g$b;->e:J

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastModifiedAt"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lv/g$b;->e:J

    :cond_1
    iget-wide v0, p0, Lv/g$b;->e:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/g$b;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getLeaderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv/g$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lv/g$b;->b:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lv/g$b;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lv/g$b;->a:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lv/g$b;->a:Ljava/lang/String;

    return-object v0
.end method
