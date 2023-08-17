.class Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;->getHWRDBfilenames()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile$1;->this$0:Lcom/samsung/android/sdk/pen/recogengine/resources/SpenResourceProviderFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".dat"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
