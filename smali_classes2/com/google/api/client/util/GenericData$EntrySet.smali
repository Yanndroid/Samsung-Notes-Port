.class final Lcom/google/api/client/util/GenericData$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/GenericData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

.field public final synthetic this$0:Lcom/google/api/client/util/GenericData;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/GenericData;)V
    .locals 2

    iput-object p1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    new-instance v0, Lcom/google/api/client/util/DataMap;

    iget-object v1, p1, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v1}, Lcom/google/api/client/util/ClassInfo;->getIgnoreCase()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/api/client/util/DataMap;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/google/api/client/util/DataMap;->entrySet()Lcom/google/api/client/util/DataMap$EntrySet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    invoke-virtual {v0}, Lcom/google/api/client/util/DataMap$EntrySet;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/client/util/GenericData$EntryIterator;

    iget-object v1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    iget-object v2, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/GenericData$EntryIterator;-><init>(Lcom/google/api/client/util/GenericData;Lcom/google/api/client/util/DataMap$EntrySet;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/api/client/util/GenericData$EntrySet;->this$0:Lcom/google/api/client/util/GenericData;

    iget-object v0, v0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/GenericData$EntrySet;->dataEntrySet:Lcom/google/api/client/util/DataMap$EntrySet;

    invoke-virtual {v1}, Lcom/google/api/client/util/DataMap$EntrySet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
