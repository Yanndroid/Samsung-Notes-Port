.class public Lcom/google/api/services/drive/Drive$Channels;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Channels"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Channels$Stop;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Channels;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stop(Lcom/google/api/services/drive/model/Channel;)Lcom/google/api/services/drive/Drive$Channels$Stop;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Channels$Stop;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Channels$Stop;-><init>(Lcom/google/api/services/drive/Drive$Channels;Lcom/google/api/services/drive/model/Channel;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Channels;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
