.class public final synthetic Ly0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteScloudSync;

.field public final synthetic b:Lorg/json/JSONArray;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lz/f;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteScloudSync;Lorg/json/JSONArray;Ljava/util/List;Lz/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/v;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteScloudSync;

    iput-object p2, p0, Ly0/v;->b:Lorg/json/JSONArray;

    iput-object p3, p0, Ly0/v;->c:Ljava/util/List;

    iput-object p4, p0, Ly0/v;->d:Lz/f;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Ly0/v;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteScloudSync;

    iget-object v1, p0, Ly0/v;->b:Lorg/json/JSONArray;

    iget-object v2, p0, Ly0/v;->c:Ljava/util/List;

    iget-object v3, p0, Ly0/v;->d:Lz/f;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteScloudSync;->d(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteScloudSync;Lorg/json/JSONArray;Ljava/util/List;Lz/f;I)V

    return-void
.end method
