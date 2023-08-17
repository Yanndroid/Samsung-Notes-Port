.class public final synthetic Ld3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

.field public final synthetic b:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/a;->a:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    iput-object p2, p0, Ld3/a;->b:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    iput p3, p0, Ld3/a;->c:I

    iput-object p4, p0, Ld3/a;->d:Landroid/content/Context;

    iput-object p5, p0, Ld3/a;->e:Ljava/lang/String;

    iput-object p6, p0, Ld3/a;->f:Ljava/lang/String;

    iput-boolean p7, p0, Ld3/a;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Ld3/a;->a:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;

    iget-object v1, p0, Ld3/a;->b:Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;

    iget v2, p0, Ld3/a;->c:I

    iget-object v3, p0, Ld3/a;->d:Landroid/content/Context;

    iget-object v4, p0, Ld3/a;->e:Ljava/lang/String;

    iget-object v5, p0, Ld3/a;->f:Ljava/lang/String;

    iget-boolean v6, p0, Ld3/a;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;->a(Lcom/samsung/android/app/notes/widget/capture/CacheFileManager;Lcom/samsung/android/app/notes/widget/capture/CacheFileManager$CacheDataInfo;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
