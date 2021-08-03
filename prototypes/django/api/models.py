from django.db import models


class IssueGuide(models.Model):
    class Meta:
        db_table = "cga_game_def"

    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)


class Option(models.Model):
    class Meta:
        db_table = "cga_option"

    name = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    ordinal = models.IntegerField()
    issue_guide = models.ForeignKey(
        IssueGuide, db_column="gamedef", on_delete=models.DO_NOTHING
    )


class Action(models.Model):
    class Meta:
        db_table = "cga_action"

    description = models.CharField(max_length=255)
    ordinal = models.IntegerField()
    option = models.ForeignKey(
        Option, db_column="cgaoption", on_delete=models.DO_NOTHING
    )


class Drawback(models.Model):
    class Meta:
        db_table = "cga_drawback"

    description = models.CharField(max_length=255)
    ordinal = models.IntegerField()
    action = models.ForeignKey(
        Action, db_column="cgaaction", on_delete=models.DO_NOTHING
    )
