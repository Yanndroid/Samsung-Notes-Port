.class public interface abstract Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addConditionalFormatting(Lorg/apache/poi/ss/usermodel/ConditionalFormatting;)I
.end method

.method public abstract addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
.end method

.method public abstract addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
.end method

.method public abstract addConditionalFormatting([Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;)I
.end method

.method public abstract createConditionalFormattingColorScaleRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
.end method

.method public abstract createConditionalFormattingRule(BLjava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
.end method

.method public abstract createConditionalFormattingRule(BLjava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
.end method

.method public abstract createConditionalFormattingRule(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
.end method

.method public abstract createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/ExtendedColor;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
.end method

.method public abstract createConditionalFormattingRule(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;
.end method

.method public abstract getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;
.end method

.method public abstract getNumConditionalFormattings()I
.end method

.method public abstract removeConditionalFormatting(I)V
.end method
