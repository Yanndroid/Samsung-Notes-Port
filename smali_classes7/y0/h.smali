.class public final synthetic Ly0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/types/SDocScloudSync;

.field public final synthetic b:Lorg/json/JSONArray;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SDocScloudSync;Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/h;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/SDocScloudSync;

    iput-object p2, p0, Ly0/h;->b:Lorg/json/JSONArray;

    iput-object p3, p0, Ly0/h;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Ly0/h;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/SDocScloudSync;

    iget-object v1, p0, Ly0/h;->b:Lorg/json/JSONArray;

    iget-object v2, p0, Ly0/h;->c:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SDocScloudSync;->a(Lcom/samsung/android/app/notes/sync/importing/core/types/SDocScloudSync;Lorg/json/JSONArray;Ljava/util/List;I)V

    return-void
.end method
