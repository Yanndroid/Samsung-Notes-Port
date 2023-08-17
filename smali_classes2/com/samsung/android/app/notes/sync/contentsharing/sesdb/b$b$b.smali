.class public Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$b;
.super Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData<",
        "Ljava/util/List<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$b;->f:Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/ContentProviderLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/b$b$b;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/sync/entity/CoeditMainListEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
