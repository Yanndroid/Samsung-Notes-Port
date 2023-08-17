.class public Lcom/samsung/android/model/contractimpl/ParseHyperTextContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/data/contract/ParseHyperTextContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseHyperText(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/link/LinkActionHelper;->parseHyperText(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
