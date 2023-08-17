.class Luk/ac/ed/ph/snuggletex/SnugglePackage$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterBigLimitTargets(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

.field public final synthetic val$bigLimitOwner:Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$6;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$6;->val$bigLimitOwner:Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$6;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const-string v1, "Target command for big limit owner"

    invoke-static {v0, p1, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object p1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$6;->val$bigLimitOwner:Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->addInterpretation(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-void
.end method
