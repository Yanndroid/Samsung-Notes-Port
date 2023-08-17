.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/q;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/q;->a:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->i(Ljava/util/List;Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;)V

    return-void
.end method
