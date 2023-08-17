.class public final Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/utils/StorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StorageVolume"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->f:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;)Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->g:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->f:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->d:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->e:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->g:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    if-nez v2, :cond_4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->d:Z

    if-eqz v1, :cond_0

    const-string v1, " ro "

    goto :goto_0

    :cond_0
    const-string v1, " rw "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->g:Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->e:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    const-string v1, " R "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->f:Z

    if-eqz v1, :cond_2

    const-string v2, " E "

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/utils/StorageHelper$StorageVolume;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
