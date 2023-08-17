.class public La2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/api/services/drive/model/File;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/services/drive/model/File;Lcom/google/api/services/drive/model/File;)I
    .locals 2

    invoke-virtual {p1}, Lcom/google/api/services/drive/model/File;->getModifiedDate()Lcom/google/api/client/util/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/api/services/drive/model/File;->getModifiedDate()Lcom/google/api/client/util/DateTime;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/api/services/drive/model/File;

    check-cast p2, Lcom/google/api/services/drive/model/File;

    invoke-virtual {p0, p1, p2}, La2/c$a;->a(Lcom/google/api/services/drive/model/File;Lcom/google/api/services/drive/model/File;)I

    move-result p1

    return p1
.end method
