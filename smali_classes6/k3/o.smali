.class public final synthetic Lk3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic b:Ljava/net/Socket;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/o;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput-object p2, p0, Lk3/o;->b:Ljava/net/Socket;

    iput-object p3, p0, Lk3/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lk3/o;->d:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk3/o;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget-object v1, p0, Lk3/o;->b:Ljava/net/Socket;

    iget-object v2, p0, Lk3/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lk3/o;->d:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->b(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Ljava/net/Socket;Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileInfoListener;)V

    return-void
.end method
