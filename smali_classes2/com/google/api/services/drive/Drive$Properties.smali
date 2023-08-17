.class public Lcom/google/api/services/drive/Drive$Properties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Properties$Update;,
        Lcom/google/api/services/drive/Drive$Properties$Patch;,
        Lcom/google/api/services/drive/Drive$Properties$List;,
        Lcom/google/api/services/drive/Drive$Properties$Insert;,
        Lcom/google/api/services/drive/Drive$Properties$Get;,
        Lcom/google/api/services/drive/Drive$Properties$Delete;
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Delete;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Properties$Delete;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Delete;-><init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Get;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Properties$Get;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Get;-><init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public insert(Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Insert;-><init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public list(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$List;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Properties$List;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Properties$List;-><init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)Lcom/google/api/services/drive/Drive$Properties$Patch;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Properties$Patch;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Properties$Patch;-><init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)Lcom/google/api/services/drive/Drive$Properties$Update;
    .locals 1

    new-instance v0, Lcom/google/api/services/drive/Drive$Properties$Update;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/services/drive/Drive$Properties$Update;-><init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)V

    iget-object p1, p0, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {p1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    return-object v0
.end method
