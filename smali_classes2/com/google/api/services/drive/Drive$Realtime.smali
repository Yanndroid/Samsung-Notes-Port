.class public Lcom/google/api/services/drive/Drive$Realtime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Realtime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Realtime$Update;,
        Lcom/google/api/services/drive/Drive$Realtime$Get;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Realtime$Get;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Get;-><init>(Lcom/google/api/services/drive/Drive$Realtime;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;-><init>(Lcom/google/api/services/drive/Drive$Realtime;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Realtime$Update;-><init>(Lcom/google/api/services/drive/Drive$Realtime;Ljava/lang/String;Lcom/google/api/client/http/AbstractInputStreamContent;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
