.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->createReceiveFileStatusListenerWrapper(ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

.field public final synthetic val$fileSequence:I

.field public final synthetic val$fileStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;ILcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iput p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;->val$fileSequence:I

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;->val$fileStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileStatusUpdated(ID)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;

    iget v1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;->val$fileSequence:I

    iget-object v5, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection$3;->val$fileStatusListener:Lcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;

    move v2, p1

    move-wide v3, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityConnection;IIDLcom/samsung/android/mcf/continuity/api/ContinuitySessionFileManager$FileStatusListener;)V

    return-void
.end method
