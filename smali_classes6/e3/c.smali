.class public final synthetic Le3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/view/textclassifier/TextClassification;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/c;->a:Landroid/view/textclassifier/TextClassification;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le3/c;->a:Landroid/view/textclassifier/TextClassification;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/classifier/TextClassifierExtraUtils;->a(Landroid/view/textclassifier/TextClassification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
