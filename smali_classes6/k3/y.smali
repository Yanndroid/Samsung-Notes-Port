.class public final synthetic Lk3/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/y;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    iput-object p2, p0, Lk3/y;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    iput-object p3, p0, Lk3/y;->c:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/y;->a:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    iget-object v1, p0, Lk3/y;->b:Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;

    iget-object v2, p0, Lk3/y;->c:[B

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityReceiveFile;->c(Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;Lcom/samsung/android/mcf/continuity/api/ContinuityFileId;[B)V

    return-void
.end method
