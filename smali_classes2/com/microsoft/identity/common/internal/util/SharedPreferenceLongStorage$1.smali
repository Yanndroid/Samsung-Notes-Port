.class Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;->getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public nextEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

.field public final synthetic val$keyFilter:Lcom/microsoft/identity/common/java/util/ported/Predicate;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;Lcom/microsoft/identity/common/java/util/ported/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->this$0:Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->val$keyFilter:Lcom/microsoft/identity/common/java/util/ported/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/microsoft/identity/common/internal/util/AbstractSharedPrefNameValueStorage;->mManager:Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;

    invoke-interface {p1, p2}, Lcom/microsoft/identity/common/java/cache/IMultiTypeNameValueStorage;->getAllFilteredByKey(Lcom/microsoft/identity/common/java/util/ported/Predicate;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->iterator:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v5, Ljava/util/AbstractMap$SimpleEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/microsoft/identity/common/internal/util/SharedPreferenceLongStorage$1;->nextEntry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal of elements is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
