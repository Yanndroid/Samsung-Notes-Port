.class public final synthetic Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/k;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/k;

    invoke-direct {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/k;-><init>()V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/k;->a:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/k;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$SelectableWord;->isSelected()Z

    move-result p1

    return p1
.end method
