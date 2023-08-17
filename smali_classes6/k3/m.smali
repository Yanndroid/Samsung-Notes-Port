.class public final synthetic Lk3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic b:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

.field public final synthetic c:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/m;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput-object p2, p0, Lk3/m;->b:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    iput-object p3, p0, Lk3/m;->c:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk3/m;->a:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget-object v1, p0, Lk3/m;->b:Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;

    iget-object v2, p0, Lk3/m;->c:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->g(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;Lcom/samsung/android/mcf/continuity/impl/ProtoContinuityPacket$ContinuityPacket;Lcom/samsung/android/mcf/continuity/api/ContinuitySessionMessageManager$SendMessageCallback;)V

    return-void
.end method
