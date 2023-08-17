.class public final synthetic Ly0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteGoogleDriveSync;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lz/f;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteGoogleDriveSync;Ljava/util/List;Ljava/util/ArrayList;Lz/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/s;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteGoogleDriveSync;

    iput-object p2, p0, Ly0/s;->b:Ljava/util/List;

    iput-object p3, p0, Ly0/s;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Ly0/s;->d:Lz/f;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ly0/s;->a:Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteGoogleDriveSync;

    iget-object v1, p0, Ly0/s;->b:Ljava/util/List;

    iget-object v2, p0, Ly0/s;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Ly0/s;->d:Lz/f;

    check-cast p1, Lcom/google/api/services/drive/model/File;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteGoogleDriveSync;->d(Lcom/samsung/android/app/notes/sync/importing/core/types/SnoteGoogleDriveSync;Ljava/util/List;Ljava/util/ArrayList;Lz/f;Lcom/google/api/services/drive/model/File;)V

    return-void
.end method
